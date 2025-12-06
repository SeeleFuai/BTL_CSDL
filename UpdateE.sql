
USE LinhKienDienTuQly;
GO

------------------------------------------ADD------------------------------------------
INSERT INTO Nha_Cung_Cap VALUES
('NCC01', N'CNC Tech', '0901234567', N'Đà Nẵng'),
('NCC02', N'HK Electronic', '0907654321', N'Hà Nội'),
('NCC03', N'FPT Parts', '0888888888', N'Hồ Chí Minh'),
('NCC04', N'VietTech Co', '0911112222', N'Hải Phòng'),
('NCC05', N'SG Components', '0923334444', N'Bình Dương'),
('NCC06', N'Japan IC Supply', '0932221111', N'Tokyo - Japan'),
('NCC07', N'Taiwan Microchip', '0945556666', N'Taipei - Taiwan'),
('NCC08', N'Korea Semi', '0957778888', N'Seoul - Korea');



INSERT INTO Nhan_Vien VALUES
('NV01', N'Nguyễn Văn A', '0931112233', N'Quản lý'),
('NV02', N'Lê Thị B', '0942223344', N'Bán hàng'),
('NV03', N'Trần Văn C', '0953334455', N'Thủ kho'),
('NV04', N'Phạm Thị D', '0964445566', N'Kế toán'),
('NV05', N'Hoàng Văn E', '0975556677', N'Bán hàng'),
('NV06', N'Đỗ Thị F', '0986667788', N'Kỹ thuật sửa chữa');


INSERT INTO Khach_Hang VALUES
('KH01', N'Phạm Minh Tuấn', '0912345678', N'Hà Nội'),
('KH02', N'Ngô Thị Hải', '0987654321', N'Hồ Chí Minh'),
('KH03', N'Lưu Văn H', '0934521789', N'Đà Nẵng'),
('KH04', N'Vũ Thị Trang', '0902123456', N'Huế'),
('KH05', N'Bùi Quang L', '0973123456', N'Ninh Bình'),
('KH06', N'Nguyễn Thị Oanh', '0912123434', N'Bắc Giang'),
('KH07', N'Đặng Hữu Khang', '0934545454', N'Hải Phòng'),
('KH08', N'Cao Thanh Hưng', '0969090909', N'Nam Định');


INSERT INTO San_Pham VALUES
('SP01', N'IC NE555 Timer', N'IC tạo xung', 15000, 120),
('SP02', N'Diode 1N4007', N'Diode chỉnh lưu', 800, 500),
('SP03', N'Tụ hóa 100uF 25V', N'Tụ điện', 2000, 350),
('SP04', N'Resistor 10kΩ 1/4W', N'Điện trở', 500, 1000),
('SP05', N'LED Xanh 5mm', N'LED', 1000, 800),
('SP06', N'Cảm biến nhiệt độ LM35', N'Cảm biến', 25000, 150),
('SP07', N'Board Arduino Uno R3', N'Vi điều khiển', 220000, 35),
('SP08', N'Motor DC 12V', N'Động cơ', 45000, 75),
('SP09', N'Màn hình LCD 16x2 I2C', N'Màn hình', 80000, 50),
('SP10', N'Connector JST 2 pin', N'Đầu nối', 1500, 450),
('SP11', N'Servo SG90 9g', N'Servo', 45000, 60),
('SP12', N'Triac BTA16', N'Điều khiển AC', 12000, 200),
('SP13', N'Mosfet IRF540N', N'Transistor công suất', 18000, 190),
('SP14', N'Cảm biến chuyển động HC-SR501', N'Cảm biến', 32000, 85),
('SP15', N'Cảm biến siêu âm HC-SR04', N'Cảm biến', 28000, 90),
('SP16', N'Relay 5V 10A', N'Relay', 25000, 110),
('SP17', N'Dây cắm Breadboard 40 sợi', N'Dụng cụ', 12000, 300),
('SP18', N'Mạch nguồn Buck LM2596', N'Nguồn', 28000, 70),
('SP19', N'Pin CR2032 Maxell', N'Pin', 8000, 400),
('SP20', N'Tụ gốm 104', N'Tụ điện', 300, 2000),
('SP21', N'IC ATmega328P', N'Vi điều khiển', 85000, 40),
('SP22', N'Cảm biến khí MQ-2', N'Cảm biến', 50000, 60),
('SP23', N'IC LM358 Op-Amp', N'Khuếch đại', 6000, 180),
('SP24', N'Mạch RFID RC522', N'RFID', 35000, 55),
('SP25', N'Mạch ESP8266 NodeMCU', N'WiFi IoT module', 75000, 30),
('SP26', N'Cảm biến ánh sáng LDR 5528', N'Cảm biến', 3000, 500),
('SP27', N'Quạt tản nhiệt 5V mini', N'Quạt', 12000, 120),
('SP28', N'IC 74HC595 Shift Register', N'IC dịch', 7000, 160),
('SP29', N'Tụ hóa 470uF 35V', N'Tụ điện', 4000, 280),
('SP30', N'Resistor 1kΩ 1/4W', N'Điện trở', 500, 1800);


INSERT INTO Hoa_Don_Nhap_Hang VALUES
('PN01', '2025-01-10', 'NV03', 'NCC01'),
('PN02', '2025-01-15', 'NV03', 'NCC02'),
('PN03', '2025-02-01', 'NV03', 'NCC03'),
('PN04', '2025-02-10', 'NV03', 'NCC04'),
('PN05', '2025-03-05', 'NV03', 'NCC07');


INSERT INTO ChiTiet_HD_Nhap VALUES
('PN01', 'SP01', 200, 13000),
('PN01', 'SP03', 300, 1800),
('PN02', 'SP04', 1000, 300),
('PN02', 'SP02', 600, 500),
('PN03', 'SP07', 20, 200000),
('PN03', 'SP06', 80, 22000),
('PN03', 'SP22', 40, 42000),
('PN04', 'SP10', 500, 1000),
('PN04', 'SP05', 700, 700),
('PN04', 'SP27', 100, 9000),
('PN05', 'SP25', 50, 65000),
('PN05', 'SP21', 30, 75000);


INSERT INTO Hoa_Don_Ban_Hang VALUES
('HD01', '2025-02-05', 'NV02', 'KH01'),
('HD02', '2025-02-08', 'NV05', 'KH03'),
('HD03', '2025-02-10', 'NV02', 'KH02'),
('HD04', '2025-02-12', 'NV05', 'KH05'),
('HD05', '2025-03-01', 'NV02', 'KH07');


INSERT INTO ChiTiet_HD_Ban VALUES
('HD01', 'SP01', 10, 15000),
('HD01', 'SP05', 25, 1000),
('HD02', 'SP07', 1, 220000),
('HD02', 'SP06', 3, 25000),
('HD03', 'SP03', 50, 2000),
('HD03', 'SP04', 100, 500),
('HD04', 'SP08', 5, 45000),
('HD04', 'SP09', 2, 80000),
('HD05', 'SP25', 1, 75000),
('HD05', 'SP22', 2, 50000)


INSERT INTO Cung_Cap VALUES
('NCC01', 'SP01'),
('NCC01', 'SP03'),
('NCC01', 'SP11'),
('NCC02', 'SP02'),
('NCC02', 'SP04'),
('NCC02', 'SP20'),
('NCC02', 'SP30'),
('NCC03', 'SP06'),
('NCC03', 'SP07'),
('NCC03', 'SP22'),
('NCC04', 'SP05'),
('NCC04', 'SP10'),
('NCC04', 'SP27'),
('NCC05', 'SP08'),
('NCC05', 'SP09'),
('NCC06', 'SP21'),
('NCC06', 'SP28'),
('NCC07', 'SP25'),
('NCC07', 'SP23'),
('NCC08', 'SP13'),
('NCC08', 'SP14'),
('NCC08', 'SP15')







-- USE LinhKienDienTuQly

-- -- ADD SP
-- INSERT INTO San_Pham (MaSP, Ten, LoaiSanPham, Gia ,SoLuongTonKho)
-- VALUES 
-- ('SP001', 'ASUS B450', 'Mainboard',2500000 ,10),
-- ('SP002','ASROCK B760M Pro RS','Mainboard',2800000,7),
-- ('SP003', N'Intel i5-12400F', 'CPU', 4500000, 15),
-- ('SP004', N'NVIDIA RTX 3060', 'GPU', 9500000, 5),
-- ('SP005', N'Dell 24 inch', 'Monitor', 3500000, 8),
-- ('SP006', N'Cooler Master', 'Fan', 250000, 30),
-- ('SP007', N'Logitech G102', 'Mouse', 450000, 25),
-- ('SP008', N'Adapter nguồn', 'Others', 150000, 50);
-- GO

-- -- ADD KH
-- INSERT INTO Khach_Hang (MaKH, Ten, SDT, DiaChi)
-- VALUES
-- ('KH001', N'Nguyễn Văn A', '0912345678', N'Hà Nội'),
-- ('KH002', N'Trần Thị B', '0987654321', N'Hồ Chí Minh'),
-- ('KH003', N'Lê Văn C', '0909123456', N'Đà Nẵng'),
-- ('KH004', N'Phạm Thị D', '0934567890', N'Hải Phòng'),
-- ('KH005', N'Hoàng Văn E', '0978123456', N'Cần Thơ');
-- GO

-- -- ADD NCC
-- INSERT INTO Nha_Cung_Cap (MaNCC, TenNCC, SDT, DiaChi)
-- VALUES
-- ('NCC001', N'Công ty TNHH Linh Kiện Việt', '0912345678', N'Hà Nội'),
-- ('NCC002', N'Công ty CP Máy Tính Hà Thành', '0987654321', N'Hồ Chí Minh'),
-- ('NCC003', N'Công ty TNHH Phụ Kiện Đà Nẵng', '0909123456', N'Đà Nẵng'),
-- ('NCC004', N'Công ty CP Thiết Bị Hải Phòng', '0934567890', N'Hải Phòng'),
-- ('NCC005', N'Công ty TNHH Điện Tử Cần Thơ', '0978123456', N'Cần Thơ');
-- GO

-- -- ADD SP-NCC
-- INSERT INTO Cung_Cap (MaNCC, MaSP)
-- VALUES 
-- ('NCC001', 'SP001'),
-- ('NCC001', 'SP002'),
-- ('NCC002', 'SP001'),
-- ('NCC005', 'SP001'),
-- ('NCC004', 'SP007'),
-- ('NCC001', 'SP008'),
-- ('NCC003', 'SP006'),
-- ('NCC005', 'SP007'),
-- ('NCC005', 'SP005');
-- GO


-- -- Sửa 
-- -- UPDATE San_Pham
-- -- SET SoLuong = 15, DonGia = 2400000
-- -- WHERE MaSP = 'SP001';

-- -- Xóa 
-- -- DELETE FROM San_Pham
-- -- WHERE MaSP = 'SP001';