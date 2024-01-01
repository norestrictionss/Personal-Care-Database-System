CREATE INDEX idx_customer
ON Customer(CustomerID);


CREATE INDEX idx_salesperson
ON SalesPerson(EmployeeID)



CREATE INDEX idx_service
ON MyService(ServiceID)

CREATE INDEX idx_bcs
ON BeautyCareSpecialist(EmployeeID)


CREATE CLUSTERED INDEX idx_delivers ON DELIVERS(SpecialistID)