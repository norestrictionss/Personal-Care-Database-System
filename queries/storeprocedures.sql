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
END;



-- It assigns the employee to the target department.
CREATE PROCEDURE AssignEmployeeToDepartment
    @EmployeeID INT,
    @DepartmentID INT
AS
BEGIN
    UPDATE Employee
    SET DepartmentID = @DepartmentID
    WHERE EmployeeID = @EmployeeID;

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

