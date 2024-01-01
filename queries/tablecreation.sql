CREATE TABLE Department (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Employee (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	ManagerID INT,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
	FullName AS FirstName + ' '+ LastName,
    HiredDate DATE,
	ContactNumber varchar(30) UNIQUE,
    EmployeeAddress VARCHAR(250) UNIQUE,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
	FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID) ON DELETE NO ACTION
);



CREATE TABLE MyService (
	ServiceID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	ServiceName VARCHAR(40),
	ServiceDescription VARCHAR(250) UNIQUE DEFAULT 'It is a service provided by our personal care company',
	ServicePrice INT
);

CREATE TABLE SalesPerson (
	EmployeeID INT PRIMARY KEY NOT NULL,
	ProductSold INT CHECK(ProductSold>=0),
	ExpectedSaleRate DECIMAL(5,2),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE BeautyCareSpecialist (
	EmployeeID INT PRIMARY KEY NOT NULL,
	Specialty varchar(30),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);


CREATE TABLE DELIVERS(
	SpecialistID INT NOT NULL,
	ServiceID INT NOT NULL,
	FOREIGN KEY (SpecialistID) REFERENCES BeautyCareSpecialist(EmployeeID),
	FOREIGN KEY (ServiceID) REFERENCES MyService(ServiceID),
);

CREATE TABLE BCSCertificates (
	CertificateID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	EmployeeID INT NOT NULL,
	CertificateType varchar(100),
	FOREIGN KEY (EmployeeID) REFERENCES BeautyCareSpecialist(EmployeeID)
);



CREATE TABLE Customer (
	CustomerID INT IDENTITY(1,1) PRIMARY KEY,
	CustomerName VARCHAR(30),
	CustomerSurname VARCHAR(30),
	CustomerAddress VARCHAR(250),
	CustomerBudget INT,
	ContactNumber varchar(20) UNIQUE
);

CREATE TABLE Appointment (
	AppointmentID INT IDENTITY(1,1) PRIMARY KEY,
	AppointmentDate DATE,
	AppointmentHour TIME,
	CustomerID INT,
	ServiceID INT,
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
	FOREIGN KEY (ServiceID) REFERENCES MyService(ServiceID)
);

CREATE TABLE Warehouse (
	WarehouseCity VARCHAR(30),
	WarehouseDistrict VARCHAR(30),
	WarehouseNeighbourhood VARCHAR(40),
	WarehouseStreet VARCHAR(30),
	WarehouseBuildingNumber INT,
	WarehouseApartmentNumber INT,
	PRIMARY KEY(WarehouseCity,WarehouseDistrict,WarehouseNeighbourhood,WarehouseStreet,WarehouseBuildingNumber,WarehouseApartmentNumber)
);

CREATE TABLE Product (
	ProductID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	ProductName VARCHAR(40),
	ProductDescription VARCHAR(250),
	ProductPrice DECIMAL(5,2),
	WarehouseCity VARCHAR(30),
	WarehouseDistrict VARCHAR(30),
	WarehouseNeighbourhood VARCHAR(40),
	WarehouseStreet VARCHAR(30),
	WarehouseBuildingNumber INT,
	WarehouseApartmentNumber INT,
	FOREIGN KEY (WarehouseCity,WarehouseDistrict,WarehouseNeighbourhood,WarehouseStreet,WarehouseBuildingNumber,WarehouseApartmentNumber) REFERENCES Warehouse(WarehouseCity,WarehouseDistrict,WarehouseNeighbourhood,WarehouseStreet,WarehouseBuildingNumber,WarehouseApartmentNumber)
);

CREATE TABLE MyOrder (
	OrderID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	OrderDate DATE,
	EmployeeID INT,
	CustomerID INT,
	ProductID INT,
	FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
	FOREIGN KEY (EmployeeID) REFERENCES SalesPerson(EmployeeID),
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

