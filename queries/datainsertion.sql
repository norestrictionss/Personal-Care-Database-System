INSERT INTO Department(DepartmentName) VALUES
('Satış Departmanı'),
('Hizmet Departmanı');


INSERT INTO MyService (ServiceName, ServiceDescription, ServicePrice) VALUES
('Saç Bakım', 'Profesyonel saç bakımı', 80.00),
('Saç Bakım', 'Uzman saç renklendirme', 120.00),
('Saç Bakım', 'Saç uzatma ve özel uygulamalar', 200.00),
('Saç Bakım', 'Özel içerikli saç bakımı', 150.00),
('Saç Bakım', 'Saç tipine özel analiz ve öneriler', 90.00),
('Saç Bakım', 'Saç dökülmesine karşı özel tedavi', 120.00),
('Saç Bakım', 'Saça parlaklık kazandıran özel maske', 80.00),
('Saç Bakım', 'Saç uçlarına yönelik özel bakım', 100.00);
INSERT INTO MyService (ServiceName, ServiceDescription, ServicePrice) VALUES
('Tırnak Bakım', 'Tırnak bakımı', 50.00),
('Tırnak Bakım', 'Ayak bakımı ve cilalama', 60.00),
('Tırnak Bakım', 'Yaratıcı tırnak sanatı', 40.00),
('Tırnak Bakım', 'Uzun süreli oje ve jel manikür', 70.00),
('Tırnak Bakım', 'Klasik Fransız manikürü', 60.00),
('Tırnak Bakım', 'Akrilik tırnak uygulaması', 90.00),
('Tırnak Bakım', 'Uzun süreli jel pedikür', 75.00),
('Tırnak Bakım', 'Özel tırnak uzatma tasarımı', 110.00);
INSERT INTO MyService (ServiceName, ServiceDescription, ServicePrice) VALUES
('Cilt Bakım', 'Temel cilt bakımı', 80),
('Cilt Bakım', 'Anti-aging cilt bakımı', 150),
('Cilt Bakım', 'Akne tedavisi odaklı cilt bakımı', 130),
('Cilt Bakım', 'Hidratasyon odaklı cilt bakımı', 110),
('Cilt Bakım', 'Hassas ciltler için yatıştırıcı bakım', 100);
INSERT INTO MyService (ServiceName, ServiceDescription, ServicePrice) VALUES 
('Manuel Masaj', 'Klasik İsveç masajı', 90),
('Manuel Masaj', 'Derin doku masajı', 120),
('Manuel Masaj', 'Aromaterapi masajı', 110),
('Manuel Masaj', 'Sıcak taş masajı', 130),
('Manuel Masaj', 'Refleksoloji', 100);
INSERT INTO MyService (ServiceName, ServiceDescription, ServicePrice) VALUES
('Kupa Terapisi', 'Kuru kupa tedavisi', 100),
('Kupa Terapisi', 'Yaş kupa tedavisi (Hacamat).', 120);


INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Ahmet', 'Taskiran', '2017-03-05', '05434199472', 'İdealtepe Mahallesi, Bağdat Caddesi No: 102, Maltepe, İstanbul', 1, NULL);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Esra', 'Koç', '2018-03-01', '05601234567', 'İstiklal Caddesi No: 15, Beyoğlu, İstanbul', 2, 1);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Oğuz', 'Arslan', '2017-07-15', '05611234567', 'Bağdat Caddesi No: 88, Kadıköy, İstanbul', 2, 1);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Tolga', 'Kurt', '2023-04-22', '05741234567', 'Kozyatağı Mahallesi, Bayar Caddesi No: 21, Kadıköy, İstanbul', 1, 1);



INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Ali', 'Yılmaz', '2021-06-15', '05331234567', 'Alemdağ Caddesi No: 101, Üsküdar, İstanbul', 2, 2);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Ayşe', 'Kaya', '2020-09-20', '05441234567', 'Atatürk Bulvarı No: 134, Bakırköy, İstanbul', 2, 2);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Mehmet', 'Demir', '2019-04-30', '05551234567', 'Barbaros Bulvarı No: 45, Beşiktaş, İstanbul', 2, 2);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Elif', 'Öztürk', '2022-01-10', '05361234567', 'Cumhuriyet Caddesi No: 56, Şişli, İstanbul', 2, 2);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Ahmet', 'Çelik', '2018-08-05', '05371234567', 'Hürriyet Caddesi No: 67, Kartal, İstanbul', 2, 2);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Fatma', 'Akar', '2020-11-25', '05381234567', 'İnönü Caddesi No: 23, Maltepe, İstanbul', 2, 2);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Murat', 'Can', '2021-03-15', '05391234567', 'Fatih Sultan Mehmet Bulvarı No: 32, Fatih, İstanbul', 2, 3);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Zeynep', 'Yıldırım', '2019-07-22', '05401234567', 'Dr. Zeki Zeren Sokak No: 4, Zeytinburnu, İstanbul', 2, 3);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Emre', 'Güneş', '2021-12-05', '05411234567', 'Bahçelievler 7. Cadde No: 11, Bahçelievler, İstanbul', 2, 3);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Seda', 'Taş', '2022-05-18', '05421234567', 'Gaziosmanpaşa Bulvarı No: 8, Gaziosmanpaşa, İstanbul', 2, 3);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Kerem', 'Bulut', '2020-02-20', '05431234567', 'Ümraniye Caddesi No: 19, Ümraniye, İstanbul', 2, 3);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Berk', 'Sarı', '2023-01-05', '05701234567', 'Mimar Sinan Caddesi No: 58, Üsküdar, İstanbul', 1, 4);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Ece', 'Demir', '2022-06-20', '05711234567', 'Mevlana Caddesi No: 77, Pendik, İstanbul', 1, 4);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Caner', 'Tez', '2021-09-15', '05721234567', 'Demokrasi Caddesi No: 40, Ataşehir, İstanbul', 1, 4);

INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Derya', 'Akın', '2022-11-08', '05731234567', 'Mecidiye Mahallesi, Ortaköy Meydanı No: 9, Beşiktaş, İstanbul', 1, 4);


INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID)
VALUES ('Fatma', 'Çakır', '2019-07-25', '05449876543', 'Tarabya Bayırı Caddesi No: 12, Sarıyer, İstanbul', 1, 12);

INSERT INTO BeautyCareSpecialist (EmployeeID, Specialty) VALUES 
(5,'Saç Bakımı'), -- Ali Yılmaz
(6,'Saç Bakımı'), -- Ayşe Kaya
(7,'Saç Bakımı'), -- Mehmet Demir 
(8,'Saç Bakımı'), -- Elif Öztürk
(9,'Saç Bakımı'), -- Ahmet Çelik
(10,'Saç Bakımı'), -- Fatma Akar
(11,'Saç Bakımı'), -- Murat Can
(12,'Saç Bakımı'), -- Zeynep Yıldırım
(13,'Saç Bakımı'), -- Emre Güneş
(14,'Saç Bakımı'), -- Seda Taş
(15,'Saç Bakımı'), -- Kerem Bulut
(3,'Saç Bakımı'); -- Oğuz Arslan


INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate)
VALUES (2, 120, 0.75); -- Esra Koç için

INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate)
VALUES (16, 95, 0.60); -- Berk Sarı için

INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate)
VALUES (17, 110, 0.65); -- Ece Demir için

INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate)
VALUES (18, 80, 0.55); -- Caner Tez için

INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate)
VALUES (19, 105, 0.70); -- Derya Akın için

INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate)
VALUES (4, 100, 0.68); -- Tolga Kurt için

INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate)
VALUES (1, 130, 0.80); -- Ahmet Taskiran için


INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate)
VALUES (20, 150, 0.04); -- Fatma Cakir