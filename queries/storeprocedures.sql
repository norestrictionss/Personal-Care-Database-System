-- Create a stored procedure to get customers that exceeds the budget entered as an argument
CREATE PROCEDURE GetCustomersExceedingBudget
    @ThresholdBudget INT
AS
BEGIN
    -- Select customers exceeding the specified budget
    SELECT 
        CustomerID,
        CustomerName,
        CustomerSurname,
        CustomerAddress,
        CustomerBudget
    FROM Customer
    WHERE CustomerBudget > @ThresholdBudget;
END;

-- It returns the Product Depending on Product ID
CREATE PROCEDURE GetProductInventory
    @ProductID INT
AS
BEGIN

    IF(NOT EXISTS(SELECT * FROM Product p WHERE p.ProductID = @ProductID))
    BEGIN
        RAISERROR('Product not found.', 16, 1)
    END
    ELSE
    BEGIN
            SELECT 
            ProductID,
            ProductName,
            ProductPrice
        FROM Product
        WHERE ProductID = @ProductID;
    END
END;


-- It returns the appointments accordingly with their service type.
CREATE PROCEDURE GetServiceAppointments
    @ServiceName INT
AS
BEGIN

    IF(NOT EXISTS(SELECT * FROM MyService m WHERE @ServiceName=m.ServiceName))
    BEGIN
        RAISERROR('Service not found.', 16, 1)
    END
    ELSE
    BEGIN
        SELECT 
            a.AppointmentID,
            a.AppointmentDate,
            a.AppointmentHour,
            c.CustomerID,
            c.CustomerName,
            c.CustomerSurname
        FROM Appointment a
        INNER JOIN Customer c ON a.CustomerID = c.CustomerID
        WHERE a.ServiceName = @ServiceName;
    END
END;



-- It assigns the employee to the target department.
CREATE PROCEDURE AssignEmployeeToDepartment
    @EmployeeID INT,
    @DepartmentID INT
AS
BEGIN
    IF(NOT EXISTS(SELECT * FROM Employee e WHERE e.EmployeeID=@EmployeeID))
    BEGIN
        RAISERROR('Employee not found.', 16, 1)
    END
    ELSE 
    BEGIN 
        IF(NOT EXISTS(SELECT * FROM Department d WHERE d.DepartmentID=@DepartmentID))
        BEGIN
            RAISERROR('Department not found.', 16, 1)
        END
        ELSE
        BEGIN
            UPDATE Employee
            SET DepartmentID = @DepartmentID
            WHERE EmployeeID = @EmployeeID;
        END
    END

END;

-- It extensively summarizes the information of the employee including the sales.
CREATE PROCEDURE GenerateEmployeeReport
AS
BEGIN
    SELECT 
        e.EmployeeID,
        e.FirstName,
        e.LastName,
        e.HiredDate,
        e.EmployeeAddress,
        d.DepartmentName,
        s.ProductSold,
        s.ExpectedSaleRate
    FROM Employee e
    LEFT JOIN SalesPerson s ON e.EmployeeID = s.EmployeeID
    LEFT JOIN Department d ON e.DepartmentID = d.DepartmentID;
END;

-- It prints the average product prices by warehouse according to their cities and districts.
CREATE PROCEDURE CalculateAverageProductPriceByWarehouse
AS
BEGIN
    SELECT 
        w.WarehouseCity,
        w.WarehouseDistrict,
        AVG(p.ProductPrice) AS AverageProductPrice
    FROM Warehouse w
    INNER JOIN Product p ON w.WarehouseCity = p.WarehouseCity
        AND w.WarehouseDistrict = p.WarehouseDistrict
        AND w.WarehouseNeighbourhood = p.WarehouseNeighbourhood
    GROUP BY w.WarehouseCity, w.WarehouseDistrict;
END;


-- It creates the appointment
CREATE PROCEDURE createAppointment  @AppointmentDate DATE, @AppointmentHour TIME
AS
BEGIN
    

    INSERT INTO Appointment (AppointmentDate, AppointmentHour) VALUES (@AppointmentDate, @AppointmentHour)
END;



-- It sets the appointment and adjusts the id's to the necessary fields.
CREATE PROCEDURE setAppointment @CustomerId INT, @ServiceId INT, @AppointmentId INT
AS
BEGIN
    UPDATE Appointment
    SET CustomerID = @CustomerId, ServiceID = @ServiceId
    WHERE AppointmentID=@AppointmentId 
END;



-- Product ordering process performs and MyOrder is inserted
CREATE PROCEDURE OrderProduct @OrderDate DATE, @EmployeeId INT, @CustomerId INT, @ProductId INT
AS
BEGIN

    INSERT INTO MyOrder (OrderDate, EmployeeID, CustomerID, ProductID) VALUES (@OrderDate, @EmployeeId, @CustomerId, @ProductId)
END;



-- Manager adds employee.
CREATE PROCEDURE addEmployee @ManagerId INT,
@FirstName varchar(30), @LastName varchar(30), @HiredDate DATE, @ContactNumber INT, @Address varchar(250), @DepartmentID INT
AS
BEGIN
	
	-- Employee with ID 1 is the general manager. He/she is also the manager of the department managers.
	IF(NOT EXISTS(SELECT * FROM Employee e WHERE e.EmployeeID=@ManagerId AND e.ManagerID=1))
	BEGIN
		RAISERROR('Manager not found.', 16, 1)
	END
	ELSE
	BEGIN
		INSERT INTO Employee (ManagerID, FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID)
		VALUES (@ManagerId, @FirstName, @LastName, @HiredDate, @ContactNumber, @Address, @DepartmentId)
	END
END;

-- That procedure adds SalesPerson through existing employee.
CREATE PROCEDURE addSalesPerson @ExpectedSaleRate DECIMAL(5, 2), @EmployeeId INT, @ProductSold INT
AS
BEGIN

    DECLARE @SalesPersonId INT
    IF(NOT EXISTS(SELECT * FROM Employee WHERE EmployeeID=@EmployeeId))
    BEGIN
        RAISERROR('Employee not found.', 16, 1)
    END
    ELSE
    BEGIN
        INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate) VALUES (@EmployeeId, @ProductSold, @ExpectedSaleRate)
    END
END;


-- That procedure adds BeautyCareSpecialist through existing employee.
CREATE PROCEDURE addBeautyCareSpecialist @EmployeeId INT, @Specialty varchar(30)
AS
BEGIN

    IF(NOT EXISTS(SELECT * FROM Employee WHERE EmployeeID=@EmployeeId))
    BEGIN
        RAISERROR('Employee not found.', 16, 1)
    END
    ELSE
    BEGIN
        INSERT INTO BeautyCareSpecialist (EmployeeID, Specialty) VALUES (@EmployeeId, @Specialty)
    END
END;

-- It deletes the outdated orders from the database. (The orders which have been done more than 1 year ago)
CREATE PROCEDURE DeleteOldOrders
    @YearsAgo INT
AS
BEGIN
    DELETE FROM MyOrder
    WHERE OrderDate < DATEADD(YEAR, -@YearsAgo, GETDATE());
END;


-- That procedure deletes target appointment.
CREATE PROCEDURE DeleteAppointment
    @AppointmentID INT
AS
BEGIN
    SET NOCOUNT ON;


    -- Check if the appointment exists
    IF NOT EXISTS (SELECT 1 FROM Appointment WHERE AppointmentID = @AppointmentID)
    BEGIN
        RAISERROR ('Appointment not found.', 16, 1);
    END
    ELSE
    BEGIN
        -- Delete the appointment
        DELETE FROM Appointment WHERE AppointmentID = @AppointmentID;
    END
END;


CREATE PROCEDURE DeleteEmployee
    @EmployeeId INT, @ManagerId INT
AS
BEGIN

    IF(@ManagerId=1 OR @EmployeeId=1)
    BEGIN
        RAISERROR('You can not delete managers.', 16, 1)
    END
    ELSE
    BEGIN
        IF(NOT EXISTS(SELECT * FROM Employee e WHERE e.ManagerID = @ManagerId))
        BEGIN
            RAISERROR('Manager not found', 16, 1)
        END
        ELSE
        BEGIN
            
            IF(NOT EXISTS(SELECT * FROM Employee e WHERE e.EmployeeID = @EmployeeId))
            BEGIN
                RAISERROR('Employee not found.', 16, 1)
            END
            ELSE
            BEGIN
                IF(EXISTS(SELECT * FROM Employee e WHERE e.EmployeeID = @EmployeeId AND e.ManagerID=@ManagerId))
                BEGIN
                    DELETE FROM Employee WHERE EmployeeID=@EmployeeId
                END
                ELSE
                BEGIN  
                    RAISERROR('That manager doesnt manage that employee.', 16, 1)
                END
            END
        END
    END
END