-- Create a stored procedure to get customers exceeding their budget
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
    SELECT 
        ProductID,
        ProductName,
        ProductDescription,
        ProductPrice
    FROM Product
    WHERE ProductID = @ProductID;
END;


-- It returns the employee performance summary
CREATE PROCEDURE GetEmployeeSalesPerformanceSummary
AS
BEGIN
    SELECT 
        e.EmployeeID,
        e.FirstName,
        e.LastName,
        SUM(sp.ProductSold) AS TotalProductsSold,
        SUM(sp.ProductSold * p.ProductPrice) AS TotalRevenue
    FROM Employee e
    LEFT JOIN SalesPerson sp ON e.EmployeeID = sp.EmployeeID
    LEFT JOIN MyOrder o ON e.EmployeeID = o.EmployeeID
    LEFT JOIN Product p ON o.ProductID = p.ProductID
    GROUP BY e.EmployeeID, e.FirstName, e.LastName;
END;


-- It returns the appointments accordingly with their service type.
CREATE PROCEDURE GetServiceAppointments
    @ServiceID INT
AS
BEGIN

    IF(NOT EXISTS(SELECT * FROM MyService m WHERE @ServiceID=m.ServiceID))
    BEGIN
        RAISERROR('Service not found.')
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
        WHERE a.ServiceID = @ServiceID;
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
@FirstName varchar(30), @LastName varchar(30), @HiredDate DATE, @Address varchar(250), @DepartmentId INT
AS
BEGIN
    INSERT INTO Employee (ManagerID, FirstName, LastName, HiredDate, EmployeeAddress, DepartmentID)
    VALUES (@ManagerId, @FirstName, @LastName, @HiredDate, @Address, @DepartmentId)
END;



-- That procedure adds SalesPerson through existing employee.
CREATE PROCEDURE addSalesPerson @ExpectedSaleRate DECIMAL(5, 2), @EmployeeId INT, @ProductSold INT
AS
BEGIN

    DECLARE @SalesPersonId INT
    INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate) VALUES (@EmployeeId, @ProductSold, @ExpectedSaleRate)
END;


-- That procedure adds BeautyCareSpecialist through existing employee.
CREATE PROCEDURE addBeautyCareSpecialist @EmployeeId INT, @Specialty varchar(30)
AS
BEGIN

    INSERT INTO BeautyCareSpecialist (EmployeeID, Specialty) VALUES (@EmployeeId, @Specialty)
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

    -- Delete the appointment
    DELETE FROM Appointment WHERE AppointmentID = @AppointmentID;
    -- Check if the appointment exists
    IF NOT EXISTS (SELECT 1 FROM Appointment WHERE AppointmentID = @AppointmentID)
    BEGIN
        RAISERROR ('Appointment not found.', 16, 1);
        ROLLBACK TRANSACTION
    END
END;