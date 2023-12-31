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


INSERT INTO Employee (FirstName, LastName, HiredDate, ContactNumber, EmployeeAddress, DepartmentID, ManagerID) VALUES
--GENEL YONETICI
('Ahmet', 'Taskiran', '2017-03-05', '05434199472', 'İdealtepe Mahallesi, Bağdat Caddesi No: 102, Maltepe, İstanbul', 1, NULL),
-- 2. Departman'ın eş-yöneticisi
('Esra', 'Koç', '2018-03-01', '05601234567', 'İstiklal Caddesi No: 15, Beyoğlu, İstanbul', 2, 1),
-- 2. Departman'ın eş-yöneticisi
('Oğuz', 'Arslan', '2017-07-15', '05611234567', 'Bağdat Caddesi No: 88, Kadıköy, İstanbul', 2, 1),
-- 1. Departman'ın yöneticisi
('Tolga', 'Kurt', '2023-04-22', '05741234567', 'Kozyatağı Mahallesi, Bayar Caddesi No: 21, Kadıköy, İstanbul', 1, 1),
('Ali', 'Yılmaz', '2021-06-15', '05331234567', 'Alemdağ Caddesi No: 101, Üsküdar, İstanbul', 2, 2),
('Ayşe', 'Kaya', '2020-09-20', '05441234567', 'Atatürk Bulvarı No: 134, Bakırköy, İstanbul', 2, 2),
('Mehmet', 'Demir', '2019-04-30', '05551234567', 'Barbaros Bulvarı No: 45, Beşiktaş, İstanbul', 2, 2),
('Elif', 'Öztürk', '2022-01-10', '05361234567', 'Cumhuriyet Caddesi No: 56, Şişli, İstanbul', 2, 2),
('Ahmet', 'Çelik', '2018-08-05', '05371234567', 'Hürriyet Caddesi No: 67, Kartal, İstanbul', 2, 2),
('Fatma', 'Akar', '2020-11-25', '05381234567', 'İnönü Caddesi No: 23, Maltepe, İstanbul', 2, 2),
('Murat', 'Can', '2021-03-15', '05391234567', 'Fatih Sultan Mehmet Bulvarı No: 32, Fatih, İstanbul', 2, 3),
('Zeynep', 'Yıldırım', '2019-07-22', '05401234567', 'Dr. Zeki Zeren Sokak No: 4, Zeytinburnu, İstanbul', 2, 3),
('Emre', 'Güneş', '2021-12-05', '05411234567', 'Bahçelievler 7. Cadde No: 11, Bahçelievler, İstanbul', 2, 3),
('Seda', 'Taş', '2022-05-18', '05421234567', 'Gaziosmanpaşa Bulvarı No: 8, Gaziosmanpaşa, İstanbul', 2, 3),
('Kerem', 'Bulut', '2020-02-20', '05431234567', 'Ümraniye Caddesi No: 19, Ümraniye, İstanbul', 2, 3),
('Berk', 'Sarı', '2023-01-05', '05701234567', 'Mimar Sinan Caddesi No: 58, Üsküdar, İstanbul', 1, 4),
('Ece', 'Demir', '2022-06-20', '05711234567', 'Mevlana Caddesi No: 77, Pendik, İstanbul', 1, 4),
('Caner', 'Tez', '2021-09-15', '05721234567', 'Demokrasi Caddesi No: 40, Ataşehir, İstanbul', 1, 4),
('Derya', 'Akın', '2022-11-08', '05731234567', 'Mecidiye Mahallesi, Ortaköy Meydanı No: 9, Beşiktaş, İstanbul', 1, 4),
('Fatma', 'Çakır', '2019-07-25', '05449876543', 'Tarabya Bayırı Caddesi No: 12, Sarıyer, İstanbul', 1, 4);

INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate) VALUES
(1, 130, 0.80), -- Ahmet Taskiran için GENEL YONETICI
(4, 100, 0.68), -- Tolga Kurt için ALT YONETICI
(16, 95, 0.60), -- Berk Sarı için
(17, 110, 0.65), -- Ece Demir için
(18, 80, 0.55), -- Caner Tez için
(19, 105, 0.70), -- Derya Akın için
(20, 150, 0.04); -- Fatma Cakir

INSERT INTO BeautyCareSpecialist (EmployeeID, Specialty) VALUES 
(2,'Saç Bakımı'), -- Oğuz Arslan
(3,'Saç Bakımı'), -- Esra Koç
(5,'Saç Bakim'), -- Ali Yılmaz
(6,'Saç Bakim'), -- Ayşe Kaya
(7,'Saç Bakim'), -- Mehmet Demir 
(8,'Tirnak Bakim'), -- Elif Öztürk
(9,'Tirnak Bakim'), -- Ahmet Çelik
(10,'Tirnak Bakim'), -- Fatma Akar
(11,'Cilt Bakim'), -- Murat Can
(12,'Cilt Bakim'), -- Zeynep Yıldırım
(13,'Manuel Masaj'), -- Emre Güneş
(14,'Manuel Masaj'), -- Seda Taş
(15,'Kupa Terapisi'); -- Kerem Bulut

INSERT INTO DELIVERS (SpecialistID, ServiceID) VALUES
(2,2),
(3,2),
(5,2),
(6,2),
(7,2),
(8,2),
(9,2),
(10,2),
(11,2),
(12,2),
(13,2),
(14,2),
(15,2);
 



INSERT INTO WareHouse (WareHouseCity, WareHouseDistrict, WareHouseNeighbourhood, WareHouseStreet, WareHouseBuildingNumber, WareHouseApartmentNumber) VALUES
('İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1);

INSERT INTO Product (ProductName, ProductPrice, WarehouseCity, WarehouseDistrict, WarehouseNeighbourhood, WarehouseStreet, WarehouseBuildingNumber, WarehouseApartmentNumber) VALUES
-- Ürün 1
('Cilt Nemlendirici Krem', 150.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 2
('Anti-Aging Yüz Serumu', 200.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 3
('Güneş Koruyucu Losyon', 120.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 4
('Lüks Yüz Maskesi', 175.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 5
('Saç Bakım Yağı', 90.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 6
('Organik Şampuan', 85.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 7
('Doğal Saç Kremi', 80.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 8
('El Kremi', 60.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 9
('Vücut Losyonu', 110.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 10
('Ayak Bakım Kremi', 70.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 11
('Makyaj Temizleme Suyu', 95.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 12
('Tonik', 75.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 13
('Peeling Kremi', 110.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 14
('Göz Kremi', 120.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 15
('Yüz Temizleme Jeli', 65.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 16
('Akne Karşıtı Losyon', 130.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 17
('Yüz Maskesi', 85.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 18
('Nemlendirici Maske', 90.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 19
('Ruj', 50.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 20
('Fondöten', 140.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 21
('Maskara', 80.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 22
('Göz Farı', 70.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 23
('Aydınlatıcı', 95.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 24
('Allık', 85.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 25
('Oje', 40.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 26
('Saç Boyası', 110.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 27
('Saç Spreyi', 100.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 28
('Saç Kremi', 90.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 29
('Vücut Yağı', 130.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1),
-- Ürün 30
('El Sabunu', 55.00, 'İstanbul', 'Kadıköy', 'Moda', 'Moda Caddesi', 5, 1);

