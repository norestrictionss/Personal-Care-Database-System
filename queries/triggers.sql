CREATE TRIGGER Update_SalesPerson
ON MyOrder
AFTER INSERT
AS
 BEGIN
	
	declare @EmployeeId INT;
	SELECT @EmployeeId=EmployeeID FROM inserted

	
	UPDATE SalesPerson
	SET 
	ProductSold = ProductSold +1
	WHERE @EmployeeId=EmployeeID

 END;

CREATE TRIGGER trg_AfterOrderInsert
ON MyOrder
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Update the Customer's budget by subtracting the OrderAmount from CustomerBudget
    UPDATE Customer
    SET CustomerBudget = CustomerBudget - i.OrderAmount
    FROM Customer c
    INNER JOIN inserted i ON c.CustomerID = i.CustomerID;
END;
