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

