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
