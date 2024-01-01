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
-- 1. Departman'ın eş-yöneticisi
('Tolga', 'Kurt', '2023-04-22', '05741234567', 'Kozyatağı Mahallesi, Bayar Caddesi No: 21, Kadıköy, İstanbul', 1, 1),
-- 1. Departman'ın eş-yöneticisi
('Ebru', 'İnan', '2020-09-10', '05431234568', 'Kanlıca Mahallesi, Mihrabat Caddesi No: 45, Beykoz, İstanbul', 1, 1),

--EmployeeID: 6-10
('Ali', 'Yılmaz', '2021-06-15', '05331234567', 'Alemdağ Caddesi No: 101, Üsküdar, İstanbul', 2, 2),
('Ayşe', 'Kaya', '2020-09-20', '05441234567', 'Atatürk Bulvarı No: 134, Bakırköy, İstanbul', 2, 2),
('Mehmet', 'Demir', '2019-04-30', '05551234567', 'Barbaros Bulvarı No: 45, Beşiktaş, İstanbul', 2, 2),
('Elif', 'Öztürk', '2022-01-10', '05361234567', 'Cumhuriyet Caddesi No: 56, Şişli, İstanbul', 2, 2),
('Ahmet', 'Çelik', '2018-08-05', '05371234567', 'Hürriyet Caddesi No: 67, Kartal, İstanbul', 2, 2),

--EmployeeID: 11-15
('Fatma', 'Akar', '2020-11-25', '05381234567', 'İnönü Caddesi No: 23, Maltepe, İstanbul', 2, 2),
('Murat', 'Can', '2021-03-15', '05391234567', 'Fatih Sultan Mehmet Bulvarı No: 32, Fatih, İstanbul', 2, 2),
('Zeynep', 'Yıldırım', '2019-07-22', '05401234567', 'Dr. Zeki Zeren Sokak No: 4, Zeytinburnu, İstanbul', 2, 2),
('Emre', 'Güneş', '2021-12-05', '05411234567', 'Bahçelievler 7. Cadde No: 11, Bahçelievler, İstanbul', 2, 2),
('Seda', 'Taş', '2022-05-18', '05421234567', 'Gaziosmanpaşa Bulvarı No: 8, Gaziosmanpaşa, İstanbul', 2, 2),

--EmployeeID: 15-19
('Kerem', 'Bulut', '2020-02-20', '05431234567', 'Ümraniye Caddesi No: 19, Ümraniye, İstanbul', 2, 2),
('Berk', 'Sarı', '2023-01-05', '05701234567', 'Mimar Sinan Caddesi No: 58, Üsküdar, İstanbul', 2, 2),
('Ece', 'Demir', '2022-06-20', '05711234567', 'Mevlana Caddesi No: 77, Pendik, İstanbul', 2, 2),
('Caner', 'Tez', '2021-09-15', '05721234567', 'Demokrasi Caddesi No: 40, Ataşehir, İstanbul', 2, 2),
('Derya', 'Akın', '2022-11-08', '05731234567', 'Mecidiye Mahallesi, Ortaköy Meydanı No: 9, Beşiktaş, İstanbul', 2, 2),

--EmployeeID: 20-24
('Fatma', 'Çakır', '2019-07-25', '05449876543', 'Tarabya Bayırı Caddesi No: 12, Sarıyer, İstanbul', 2, 2),
('Leyla', 'Arslan', '2021-01-10', '05431234560', 'Fenerbahçe Mahallesi, Fenerbahçe Caddesi No: 34, Kadıköy, İstanbul', 2, 3),
('Emir', 'Bilgiç', '2022-02-20', '05321234563', 'Çengelköy Mahallesi, Çınarlı Cami Sokak No: 5, Üsküdar, İstanbul', 2, 3),
('Selin', 'Çetin', '2020-03-15', '05431234562', 'Teşvikiye Mahallesi, Nişantaşı Caddesi No: 47, Şişli, İstanbul', 2, 3),
('Kaan', 'Demir', '2021-04-18', '05431234563', 'Etiler Mahallesi, Nispetiye Caddesi No: 29, Beşiktaş, İstanbul', 2, 3),

--EmployeeID: 25-29
('Aslı', 'Erdem', '2019-05-22', '05431234564', 'Büyükçekmece Mahallesi, Atatürk Bulvarı No: 68, Büyükçekmece, İstanbul', 2, 3),
('Burak', 'Fidan', '2022-06-25', '05431234565', 'Kartaltepe Mahallesi, Olimpiyat Stadı Yolu No: 22, Bakırköy, İstanbul', 2, 3),
('Ceren', 'Güneş', '2023-07-30', '05431234566', 'Taksim Meydanı, Taksim, Beyoğlu, İstanbul', 2, 3),
('Deniz', 'Hızlı', '2018-08-05', '05431234561', 'Sultanahmet Meydanı, Fatih, İstanbul', 2, 3),
('Fırat', 'Kara', '2019-10-15', '05431234569', 'Kadıköy Rıhtım Caddesi No: 33, Kadıköy, İstanbul', 2, 3),

--EmployeeID: 30-34
('Gizem', 'Lale', '2021-11-20', '05431234570', 'Eminönü, Rüstem Paşa Mahallesi, Tahtakale Caddesi No: 12, Fatih, İstanbul', 1, 4),
('Hakan', 'Mert', '2022-12-25', '05431234571', 'Moda Mahallesi, Moda Caddesi No: 75, Kadıköy, İstanbul', 1, 4),
('Irmak', 'Narin', '2020-01-30', '05431234572', 'Bebek Mahallesi, Cevdet Paşa Caddesi No: 42, Beşiktaş, İstanbul', 1, 4),
('Koray', 'Öztürk', '2021-02-04', '05431234573', 'Kuzguncuk Mahallesi, İcadiye Caddesi No: 54, Üsküdar, İstanbul', 1, 4),
('Lara', 'Peker', '2023-03-11', '05431234574', 'Ortaköy Mahallesi, Dereboyu Caddesi No: 60, Beşiktaş, İstanbul', 1, 4),

--EmployeeID: 35-39
('Mert', 'Rüzgar', '2019-04-16', '05431234575', 'Yeşilköy Mahallesi, İstasyon Caddesi No: 45, Bakırköy, İstanbul', 1, 4),
('Nihan', 'Sönmez', '2020-05-21', '05431234576', 'Karaköy, Galata Kulesi Sokak No: 3, Beyoğlu, İstanbul', 1, 4),
('Okan', 'Tekin', '2021-06-26', '05431234577', 'Levent Mahallesi, Büyükdere Caddesi No: 201, Beşiktaş, İstanbul', 1, 4),
('Pelin', 'Ural', '2022-07-31', '05431234578', 'Maslak Mahallesi, Ağaoğlu Sokak No: 4, Sarıyer, İstanbul', 1, 4),
('Rıza', 'Vural', '2018-08-05', '05431234579', 'Florya Mahallesi, Şenlikköy Caddesi No: 67, Bakırköy, İstanbul', 1, 4),

--EmployeeID: 40-44
('Seda', 'Yıldız', '2020-09-10', '05431234580', 'Cihangir Mahallesi, Akarsu Yokuşu No: 39, Beyoğlu, İstanbul', 1, 4),
('Tolga', 'Zafer', '2019-10-15', '05431234581', 'Acıbadem Mahallesi, Acıbadem Caddesi No: 56, Kadıköy, İstanbul', 1, 4),
('Umut', 'Akman', '2021-11-20', '05431234582', 'Fındıklı Mahallesi, Meclis-i Mebusan Caddesi No: 33, Beyoğlu, İstanbul', 1, 4),
('Vildan', 'Bulut', '2022-12-25', '05431234583', 'Göztepe Mahallesi, Bağdat Caddesi No: 180, Kadıköy, İstanbul', 1, 5),
('Yeliz', 'Çelik', '2020-01-30', '05431234584', 'Bostancı Mahallesi, Bostancı Yolu No: 22, Kadıköy, İstanbul', 1, 5),

--EmployeeID: 45-49
('Zeynep', 'Demirel', '2021-02-04', '05431234585', 'Tarlabaşı Bulvarı No: 19, Beyoğlu, İstanbul', 1, 5),
('Ahmet', 'Ergin', '2023-03-11', '05431234586', 'Suadiye Mahallesi, Kazım Özalp Sokak No: 42, Kadıköy, İstanbul', 1, 5),
('Bilge', 'Fırat', '2019-04-16', '05431234587', 'Yıldız Mahallesi, Yıldız Caddesi No: 34, Beşiktaş, İstanbul', 1, 5),
('Cem', 'Gök', '2020-05-21', '05431234588', 'Yeşilyurt Mahallesi, İstasyon Caddesi No: 3, Bakırköy, İstanbul', 1, 5),
('Dilara', 'Haklı', '2021-06-26', '05431234589', 'Nişantaşı Mahallesi, Abdi İpekçi Caddesi No: 76, Şişli, İstanbul', 1, 5),

--EmployeeID: 50-54
('Elvan', 'Yılmaz', '2021-07-14', '05431234690', 'Aksaray Mahallesi, Millet Caddesi No: 59, Fatih, İstanbul', 1, 5),
('Kemal', 'Özkan', '2022-08-20', '05431234691', 'Çamlıca Mahallesi, Çamlıca Tepesi No: 2, Üsküdar, İstanbul', 1, 5),
('Lale', 'Güner', '2020-09-05', '05431234692', 'Kireçburnu Mahallesi, Sahil Yolu No: 32, Sarıyer, İstanbul', 1, 5),
('Murat', 'Kaya', '2023-10-11', '05431234693', 'Dragos Mahallesi, Piri Reis Caddesi No: 14, Kartal, İstanbul', 1, 5),
('Ahmet', 'Refik', '2022-10-19', '05431234696', 'Büyükada, Recep Koç Caddesi No: 5, Adalar, İstanbul', 1, 5);

INSERT INTO SalesPerson (EmployeeID, ProductSold, ExpectedSaleRate) VALUES
(1, 130, 0.80), -- Ahmet Taskiran için GENEL YONETICI
(4, 100, 0.68), -- Tolga Kurt için ALT YONETICI
(5, 110, 0.20), -- Ebru İnan
(30, 80, 0.55),  -- Gizem Lale için
(31, 110, 0.72),  -- Hakan Mert için
(32, 100, 0.68),  -- Irmak Narin için
(33, 90, 0.60),  -- Koray Öztürk için
(34, 85, 0.58),  -- Lara Peker için
(35, 120, 0.80),  -- Mert Rüzgar için
(36, 105, 0.70),  -- Nihan Sönmez için
(37, 95, 0.62),  -- Okan Tekin için
(38, 90, 0.61),  -- Pelin Ural için
(39, 100, 0.67),  -- Rıza Vural için
(40, 110, 0.73),  -- Seda Yıldız için
(41, 85, 0.56),  -- Tolga Zafer için
(42, 80, 0.54),  -- Umut Akman için
(43, 95, 0.63),  -- Vildan Bulut için
(44, 105, 0.71),  -- Yeliz Çelik için
(45, 90, 0.60),  -- Zeynep Demirel için
(46, 100, 0.69),  -- Ahmet Ergin için
(47, 85, 0.57),  -- Bilge Fırat için
(48, 110, 0.74),  -- Cem Gök için
(49, 120, 0.79),  -- Dilara Haklı için
(50, 90, 0.59),  -- Elvan Yılmaz için
(51, 95, 0.64),  -- Kemal Özkan için
(52, 100, 0.66),  -- Lale Güner için
(53, 85, 0.55),  -- Murat Kaya için
(54, 110, 0.72);  -- Ahmet Refik için


INSERT INTO BeautyCareSpecialist (EmployeeID, Specialty) VALUES 
(2, 'Saç Bakımı'), -- Oğuz Arslan
(3, 'Saç Bakımı'), -- Esra Koç
(6, 'Saç Bakımı'),  -- Ali Yılmaz
(7, 'Saç Bakımı'),  -- Ayşe Kaya
(8, 'Saç Bakımı'),  -- Mehmet Demir
(9, 'Saç Bakımı'),  -- Elif Öztürk
(10, 'Saç Bakımı'), -- Ahmet Çelik
(11, 'Tırnak Bakımı'), -- Fatma Akar
(12, 'Tırnak Bakımı'), -- Murat Can
(13, 'Tırnak Bakımı'), -- Zeynep Yıldırım
(14, 'Tırnak Bakımı'), -- Emre Güneş
(15, 'Tırnak Bakımı'), -- Seda Taş
(16, 'Cilt Bakımı'), -- Berk Sarı
(17, 'Cilt Bakımı'), -- Ece Demir
(18, 'Cilt Bakımı'), -- Caner Tez
(19, 'Cilt Bakımı'), -- Derya Akın
(20, 'Cilt Bakımı'), -- Fatma Çakır
(21, 'Manuel Masaj'), -- Leyla Arslan
(22, 'Manuel Masaj'), -- Emir Bilgiç
(23, 'Manuel Masaj'), -- Selin Çetin
(24, 'Manuel Masaj'), -- Kaan Demir
(25, 'Manuel Masaj'), -- Aslı Erdem
(26, 'Kupa Terapisi'), -- Burak Fidan
(27, 'Kupa Terapisi'), -- Ceren Güneş
(28, 'Kupa Terapisi'), -- Deniz Hızlı
(29, 'Kupa Terapisi'); -- Fırat Kara

-- MyService
-- 1-8: Saç bakımı
-- 9-16: Tırnak Bakımı
-- 17-21: Cilt Bakımı
-- 22-26: Manuel Masaj
-- 27-28: Kupa Terapisi

INSERT INTO DELIVERS (SpecialistID, ServiceID) VALUES
(2,1),
(3,2),
(6,3),
(7,4),
(8,5),
(9,6),
(10,7),
(11,9),
(12,10),
(13,11),
(14,12),
(15,13),
(16,17),
(17,18),
(18,19),
(19,20),
(20,21),
(21,22),
(22,23),
(23,24),
(24,25),
(25,26),
(26,27),
(27,28)

-- Saç Bakımı Uzmanları için Sertifikalar
INSERT INTO BCSCertificates (EmployeeID, CertificateType) VALUES 
(2, 'Gelişmiş Saç Bakımı ve Stilistliği Sertifikası'),
(3, 'Profesyonel Saç Renklendirme Uzmanlığı Sertifikası'),
(6, 'Saç Kesimi ve Şekillendirme Teknikleri Sertifikası'),
(7, 'Saç Sağlığı ve Bakımı Sertifikası'),
(8, 'Modern Saç Stilleri Tasarımı Sertifikası'),
(9, 'Doğal Saç Bakım Uygulamaları Sertifikası'),
(10, 'Yaratıcı Saç Stilleri ve Trendleri Sertifikası');

-- Tırnak Bakımı Uzmanları için Sertifikalar
INSERT INTO BCSCertificates (EmployeeID, CertificateType) VALUES 
(11, 'Profesyonel Manikür ve Pedikür Sertifikası'),
(12, 'Tırnak Sanatı ve Tasarımı Uzmanlığı Sertifikası'),
(13, 'Gelişmiş Tırnak Bakım Teknikleri Sertifikası'),
(14, 'Akrilik ve Jel Tırnak Uygulamaları Sertifikası'),
(15, 'Tırnak Sağlığı ve Güzellik Bakımı Sertifikası');

-- Cilt Bakımı Uzmanları için Sertifikalar
INSERT INTO BCSCertificates (EmployeeID, CertificateType) VALUES 
(16, 'Profesyonel Cilt Analizi ve Bakımı Sertifikası'),
(17, 'Gelişmiş Cilt Bakım Teknikleri ve Tedavileri Sertifikası'),
(18, 'Anti-Aging Cilt Bakım Uzmanlığı Sertifikası'),
(19, 'Cilt Yenileme ve Canlandırma Teknikleri Sertifikası'),
(20, 'Doğal Cilt Bakımı ve Detoks Uygulamaları Sertifikası');

-- Manuel Masaj Uzmanları için Sertifikalar
INSERT INTO BCSCertificates (EmployeeID, CertificateType) VALUES 
(21, 'Gelişmiş Manuel Masaj Teknikleri Sertifikası'),
(22, 'Aromaterapi Masajı Uzmanlığı Sertifikası'),
(23, 'Sporcular için Derin Doku Masajı Sertifikası'),
(24, 'Rahatlama ve Stres Azaltma Masajı Sertifikası'),
(25, 'Refleksoloji ve Terapötik Masaj Uygulamaları Sertifikası');

-- Kupa Terapisi Uzmanları için Sertifikalar
INSERT INTO BCSCertificates (EmployeeID, CertificateType) VALUES 
(26, 'Geleneksel Kupa Terapisi Uygulama Sertifikası'),
(27, 'Modern Kupa Terapisi Teknikleri Sertifikası'),
(28, 'Kupa Terapisi ile Ağrı Yönetimi Sertifikası'),
(29, 'Kupa Terapisi ile Kan Dolaşımı ve Detoks Sertifikası');

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



-- Customers
INSERT INTO Customer (CustomerName, CustomerSurname, CustomerAddress, CustomerBudget, ContactNumber)
VALUES
  ('Ayşe', 'Yılmaz', 'Istanbul, Kadıköy, Moda Cd. No:23', 5000, '+90 555 123 4567'),
  ('Mustafa', 'Kaya', 'Istanbul, Beşiktaş, Barbaros Bulvarı No:45', 7000, '+90 532 987 6543'),
  ('Zeynep', 'Demir', 'Istanbul, Üsküdar, Kısıklı Cd. No:78', 6000, '+90 505 678 9012'),
  ('Emre', 'Arslan', 'Istanbul, Şişli, Esentepe Cd. No:12', 5500, '+90 544 765 4321'),
  ('Gamze', 'Aksoy', 'Istanbul, Bakırköy, Ataköy Cd. No:56', 8000, '+90 533 123 7890'),
  ('Onur', 'Ergin', 'Istanbul, Sarıyer, Rumelihisarı Cd. No:34', 4500, '+90 555 876 5432'),
  ('Selin', 'Kurtuluş', 'Istanbul, Fatih, Eminönü Cd. No:78', 7000, '+90 532 243 5674'),
  ('Kaan', 'Yıldız', 'Istanbul, Beyoğlu, İstiklal Cd. No:56', 6000, '+90 505 876 5432'),
  ('Elif', 'Güneş', 'Istanbul, Ümraniye, Alemdağ Cd. No:78', 5500, '+90 544 234 5678'),
  ('Tolga', 'Kara', 'Istanbul, Başakşehir, Bahçeşehir Cd. No:34', 7500, '+90 555 312 4564'),
  ('Gizem', 'Bilgin', 'Istanbul, Esenler, Havaalanı Cd. No:56', 5000, '+90 533 451 7546'),
  ('Okan', 'Yılmaz', 'Istanbul, Avcılar, E-5 Cd. No:12', 6500, '+90 532 567 8901'),
  ('Büşra', 'Şahin', 'Istanbul, Maltepe, Başıbüyük Cd. No:34', 7000, '+90 544 678 9012'),
  ('Hakan', 'Demirtaş', 'Istanbul, Kartal, Soğanlık Cd. No:56', 6000, '+90 555 789 0123'),
  ('Merve', 'Güzel', 'Istanbul, Tuzla, Aydıntepe Cd. No:78', 5500, '+90 533 890 1234'),
  ('Efe', 'Yalın', 'Istanbul, Ataşehir, Ata Cd. No:12', 7500, '+90 532 901 2345'),
  ('Zehra', 'Koç', 'Istanbul, Ümraniye, Bulgurlu Cd. No:34', 6000, '+90 505 012 3456'),
  ('Ali', 'Kurt', 'Istanbul, Beylikdüzü, Beykent Cd. No:56', 7000, '+90 544 123 4567'),
  ('Ceren', 'Koçak', 'Istanbul, Üsküdar, Çengelköy Cd. No:78', 6500, '+90 532 234 5678'),
  ('Yunus', 'Kılıç', 'Istanbul, Başakşehir, Kayabaşı Cd. No:12', 5500, '+90 555 345 6789'),
  ('Buse', 'Çetin', 'Istanbul, Kadıköy, Acıbadem Cd. No:34', 6000, '+90 533 456 7890'),
  ('Burak', 'Öztürk', 'Istanbul, Bakırköy, Florya Cd. No:56', 7000, '+90 544 567 8901'),
  ('Elif', 'Yıldırım', 'Istanbul, Fatih, Sultanahmet Cd. No:78', 7500, '+90 532 678 9012'),
  ('Umut', 'Aktaş', 'Istanbul, Beyoğlu, Galata Cd. No:12', 5500, '+90 505 789 0123');



-- Appointments
INSERT INTO Appointment (AppointmentDate, AppointmentHour, CustomerID, ServiceID)
VALUES
    ('2024-01-01', '09:00:00', 6, 1),
    ('2024-02-03', '14:00:00', 7, 2),
    ('2024-03-05', '10:30:00', 8, 3),
    ('2024-04-07', '16:45:00', 9, 4),
    ('2024-05-09', '12:15:00', 10, 5),
    ('2024-06-11', '11:00:00', 11, 6),
    ('2024-07-13', '15:30:00', 12, 7),
    ('2024-08-15', '13:45:00', 13, 8),
    ('2024-09-17', '10:15:00', 14, 9),
    ('2024-10-19', '14:45:00', 15, 10),
    ('2024-11-21', '11:30:00', 16, 11),
    ('2024-12-23', '15:00:00', 17, 12),
    ('2024-02-25', '12:30:00', 18, 13),
    ('2024-04-27', '16:15:00', 19, 14),
    ('2024-06-29', '13:00:00', 20, 15),
    ('2024-08-31', '10:45:00', 21, 16),
    ('2024-10-02', '14:30:00', 22, 17),
    ('2024-11-04', '11:15:00', 23, 18),
    ('2024-12-06', '15:45:00', 24, 19)