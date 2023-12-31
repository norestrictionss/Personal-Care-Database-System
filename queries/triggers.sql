CREATE TRIGGER Update_SalesPerson
ON MyOrder
AFTER INSERT
AS
 BEGIN
	
	declare @EmployeeId INT;
	SELECT @EmployeeId=i.EmployeeID FROM inserted i

	UPDATE SalesPerson
	SET 
	ProductSold = ProductSold +1
	WHERE @EmployeeId=EmployeeID

    IF(NOT EXISTS(SELECT * FROM Employee WHERE @EmployeeId=EmployeeID))
    BEGIN
        RAISERROR('Employee not found.', 16, 1)	
        ROLLBACK TRANSACTION
    END
    ELSE
    BEGIN 
        -- Update the Customer's budget by subtracting the OrderAmount from CustomerBudget
        UPDATE Customer
        SET CustomerBudget = CustomerBudget - p.ProductPrice
        FROM Customer c
		INNER JOIN inserted i ON i.CustomerID = c.CustomerID
		INNER JOIN Product p ON i.ProductID=p.ProductID

        DECLARE @OrderPrice INT, @CustomerBudget INT
        SET @CustomerBudget = (SELECT c.CustomerBudget FROM Customer c)
        SET @OrderPrice = (SELECT p.ProductPrice FROM inserted i INNER JOIN Product p ON i.ProductID=p.ProductID)
        IF(@OrderPrice>@CustomerBudget)
        BEGIN
            RAISERROR ('Customer Budget is insufficient for the order price.', 16, 1);
            ROLLBACK TRANSACTION
        END
    END
END;