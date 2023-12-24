CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Employee (
    EmployeeID BIGINT PRIMARY KEY,
	ManagerID BIGINT,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    HiredDate DATE,
    EmployeeAddress VARCHAR(250),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
	FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID) ON DELETE SET NULL
);

CREATE TABLE SalesPerson (
	EmployeeID BIGINT PRIMARY KEY,
	ProductSold INT,
	ExpectedSaleRate DECIMAL(5,2),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE BeautyCareSpecialist (
	EmployeeID BIGINT PRIMARY KEY,
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE BCSCertificates (
	EmployeeID BIGINT PRIMARY KEY,
	BCSCertificates VARCHAR(40),
	FOREIGN KEY (EmployeeID) REFERENCES BeautyCareSpecialist(EmployeeID)
);

CREATE TABLE MyService (
	ServiceID INT PRIMARY KEY,
	ServiceName VARCHAR(40),
	ServiceDescription VARCHAR(250),
	ServicePrice MONEY
);

CREATE TABLE Customer (
	CustomerID BIGINT PRIMARY KEY,
	CustomerName VARCHAR(30),
	CustomerSurname VARCHAR(30),
	CustomerAddress VARCHAR(250),
	CustomerBudget MONEY
);

CREATE TABLE Appointment (
	AppointmentID INT PRIMARY KEY,
	AppointmentCapacity TINYINT,
	AppointmentDate DATE,
	AppointmentHour DECIMAL(2,2),
	CustomerID BIGINT,
	ServiceID INT,
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
	FOREIGN KEY (ServiceID) REFERENCES MyService(ServiceID)
);

CREATE TABLE Warehouse (
	WarehouseCity VARCHAR(30),
	WarehouseDistrict VARCHAR(30),
	WarehouseNeighbourhood VARCHAR(40),
	WarehouseStreet VARCHAR(30),
	WarehouseBuildingNumber SMALLINT,
	WarehouseApartmentNumber SMALLINT,
	PRIMARY KEY(WarehouseCity,WarehouseDistrict,WarehouseNeighbourhood,WarehouseStreet,WarehouseBuildingNumber,WarehouseApartmentNumber)
);

CREATE TABLE Product (
	ProductID INT PRIMARY KEY,
	ProductName VARCHAR(40),
	ProductDescription VARCHAR(250),
	ProductPrice DECIMAL(5,2),
	WarehouseCity VARCHAR(30),
	WarehouseDistrict VARCHAR(30),
	WarehouseNeighbourhood VARCHAR(40),
	WarehouseStreet VARCHAR(30),
	WarehouseBuildingNumber SMALLINT,
	WarehouseApartmentNumber SMALLINT,
	FOREIGN KEY (WarehouseCity,WarehouseDistrict,WarehouseNeighbourhood,WarehouseStreet,WarehouseBuildingNumber,WarehouseApartmentNumber) REFERENCES Warehouse(WarehouseCity,WarehouseDistrict,WarehouseNeighbourhood,WarehouseStreet,WarehouseBuildingNumber,WarehouseApartmentNumber)
);

CREATE TABLE MyOrder (
	OrderID INT PRIMARY KEY,
	OrderDate DATE,
	EmployeeID BIGINT,
	CustomerID BIGINT,
	ProductID INT,
	FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
	FOREIGN KEY (EmployeeID) REFERENCES SalesPerson(EmployeeID),
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE DeliversBCSandService (
		EmployeeID BIGINT,
		ServiceID INT,
		PRIMARY KEY (EmployeeID,ServiceID),
		FOREIGN KEY (EmployeeID) REFERENCES BeautyCareSpecialist(EmployeeID),
		FOREIGN KEY (ServiceID) REFERENCES MyService(ServiceID)
	);