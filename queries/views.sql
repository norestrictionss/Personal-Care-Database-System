
-- List the info of each SalesPerson
CREATE VIEW list_salesperson_sales_info AS
SELECT e.EmployeeID, e.FullName, e.HiredDate, e.EmployeeAddress,
s.ProductSold, s.ExpectedSaleRate, COUNT(*) SoldCount
FROM Employee e 
INNER JOIN Salesperson s ON e.EmployeeID = s.EmployeeID
LEFT JOIN MyOrder o ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID, e.FullName, e.HiredDate, e.EmployeeAddress,
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
c.CustomerBudget, c.ContactNumber,
a.AppointmentDate, a.AppointmentHour
FROM Customer c 
INNER JOIN Appointment a ON a.CustomerID = c.CustomerID
INNER JOIN MyService m ON m.ServiceID = a.ServiceID



-- Saç Bakım servisinde 1 yıldan daha kısa süredir çalışan Employee'leri listele
CREATE VIEW list_new_hair_employees AS
SELECT DISTINCT e.FirstName, e.LastName, e.EmployeeAddress, e.HiredDate
    FROM BeautyCareSpecialist bcs, Employee e, DELIVERS d, MyService ms
        WHERE bcs.EmployeeID = e.EmployeeID
            AND d.SpecialistID = bcs.EmployeeID
            AND ms.ServiceID = d.ServiceID
            AND ms.ServiceName LIKE ('%Saç Bakım%')
            AND DATEDIFF(year ,e.HiredDate,'2020-12-31 23:50') < 1