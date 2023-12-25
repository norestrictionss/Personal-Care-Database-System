
-- List the info of each SalesPerson
CREATE VIEW list_salesperson_sales_info AS
SELECT e.EmployeeID, e.FullName, e.HiredDate, e.EmployeeAddress,
s.ProductSold, s.ExpectedSaleRate, COUNT(*) SoldCount
FROM Employee e 
INNER JOIN Salesperson s ON e.EmployeeID = s.EmployeeID
INNER JOIN MyOrder o ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName, e.HiredDate, e.EmployeeAddress,
s.ProductSold, s.ExpectedSaleRate


-- Listing the details of beauty care specialist
CREATE VIEW list_beautycarespecialist_info AS
SELECT e.EmployeeID, e.FirstName, e.LastName, e.HiredDate, b.Specialty,
m.ServiceName, m.ServiceDescription, m.ServicePrice, a.AppointmentDate, a.AppointmentHour
FROM Employee e 
INNER JOIN BeautyCareSpecialist b ON e.EmployeeID = b.EmployeeID
INNER JOIN DELIVERS d ON b.EmployeeID = d.SpecialistID 
INNER JOIN MyService m ON d.ServiceID = m.ServiceID
INNER JOIN Appointment a ON a.ServiceID = m.ServiceID



-- Listing the Employees who hasn't got a manager
CREATE VIEW list_employees_with_non_manager AS
SELECT e.EmployeeID, e.FullName, e.HiredDate FROM Employee e
WHERE e.ManagerID IS NULL


--Listing all of the customers and their appointments
CREATE VIEW list_customers_and_appointments AS
SELECT c.CustomerName, c.CustomerSurname, c.CustomerAddress,
c.CustomerBudget, c.CustomerBudget, c.ContactNumber,
a.AppointmentDate, a.AppointmentHour
FROM Customer c 
INNER JOIN Appointment a ON a.CustomerID = c.CustomerID





