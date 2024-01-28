
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
    AND DATEDIFF(year, e.HiredDate, GETDATE()) < 5;
    

CREATE VIEW AppointmentsWithNoCustomers AS
SELECT
    A.AppointmentID,
    A.AppointmentDate,
    A.AppointmentHour,
    A.CustomerID,
    A.ServiceID,
    S.ServiceName,
    S.ServiceDescription,
    S.ServicePrice,
    B.EmployeeID,
    B.Specialty,
	e.FullName
FROM
    Appointment A
JOIN
    MyService S ON A.ServiceID = S.ServiceID
LEFT JOIN
    Customer C ON A.CustomerID = C.CustomerID
LEFT JOIN
    DELIVERS D ON A.ServiceID = D.ServiceID
LEFT JOIN
    BeautyCareSpecialist B ON D.SpecialistID = B.EmployeeID
LEFT JOIN
	Employee e ON e.EmployeeID = B.EmployeeID
WHERE
    C.CustomerID IS NULL;


CREATE VIEW OrderHistory AS 
SELECT
    mo.OrderID,
    mo.OrderDate,
    e.EmployeeID AS SalesPersonID,
    e.FullName AS SalesPersonName,
    c.CustomerID,
    c.FullName AS CustomerName,
    p.ProductID,
    p.ProductName,
    p.ProductPrice,
    w.WarehouseCity,
    w.WarehouseDistrict,
    w.WarehouseNeighbourhood,
    w.WarehouseStreet,
    w.WarehouseBuildingNumber,
    w.WarehouseApartmentNumber
FROM
    MyOrder mo
JOIN
    SalesPerson e ON mo.EmployeeID = e.EmployeeID
JOIN
    Customer c ON mo.CustomerID = c.CustomerID
JOIN
    Product p ON mo.ProductID = p.ProductID
JOIN
    Warehouse w ON p.WarehouseCity = w.WarehouseCifty
               AND p.WarehouseDistrict = w.WarehouseDistrict
               AND p.WarehouseNeighbourhood = w.WarehouseNeighbourhood
               AND p.WarehouseStreet = w.WarehouseStreet
               AND p.WarehouseBuildingNumber = w.WarehouseBuildingNumber
               AND p.WarehouseApartmentNumber = w.WarehouseApartmentNumber;