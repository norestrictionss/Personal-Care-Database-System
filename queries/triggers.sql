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


        DECLARE @OrderPrice INT, @CustomerBudget INT
        SET @CustomerBudget = (SELECT TOP 1 c.CustomerBudget FROM Customer c INNER JOIN inserted i ON c.CustomerID = i.CustomerID)
        SET @OrderPrice = (SELECT TOP 1 p.ProductPrice FROM inserted i INNER JOIN Product p ON i.ProductID=p.ProductID)


        UPDATE Customer
        SET CustomerBudget = CustomerBudget - @OrderPrice
        FROM Customer c INNER JOIN 
        inserted i ON i.CustomerID=c.CustomerID

        IF(@OrderPrice>@CustomerBudget)
        BEGIN
            RAISERROR ('Customer Budget is insufficient for the order price.', 16, 1);
            ROLLBACK TRANSACTION
        END
    END
END;