
USE LinhKienDienTuQly;
GO

------------------------------------------ADD------------------------------------------
INSERT INTO Nha_Cung_Cap VALUES
('NCC01', N'CNC Tech', '0901234567', N'Đà Nẵng'),
('NCC02', N'HK Electronic', '0907654321', N'Hà Nội'),
('NCC03', N'FPT Parts', '0888888888', N'HCM'),
('NCC04', N'VietTech', '0911112222', N'Hải Phòng'),
('NCC05', N'JTC Global', '0923334444', N'Quảng Nam');

--	
INSERT INTO Nhan_Vien VALUES
('NV01', N'Nguyễn Văn A', '0931112233', N'Quản lý'),
('NV02', N'Lê Thị B', '0942223344', N'Bán hàng'),
('NV03', N'Trần Văn C', '0953334455', N'Thủ kho'),
('NV04', N'Phạm Thị D', '0964445566', N'Kế toán'),
('NV05', N'Hoàng Văn E', '0975556677', N'Bán hàng');

--
INSERT INTO Khach_Hang VALUES
('KH01', N'Phạm Minh Tuấn', '0912345678', N'Hà Nội'),
('KH02', N'Ngô Thị Hải', '0987654321', N'HCM'),
('KH03', N'Lưu Văn H', '0934521789', N'Đà Nẵng'),
('KH04', N'Vũ Thị Trang', '0902123456', N'Huế'),
('KH05', N'Bùi Quang L', '0973123456', N'Ninh Bình');

--
INSERT INTO San_Pham VALUES
('SP01', N'IC 555 Timer', 'Điện tử vi điều khiển', 15000, 120),
('SP02', N'Diode 1N4007', 'Linh kiện điện tử', 800, 500),
('SP03', N'Tụ điện 100uF', 'Tụ điện', 2000, 350),
('SP04', N'Resistor 10kΩ', 'Điện trở', 500, 1000),
('SP05', N'LED Xanh', 'Đèn led', 1000, 800),
('SP06', N'Cảm biến nhiệt độ LM35', N'Cảm biến', 25000, 150),
('SP07', N'Mạch Arduino Uno', N'Mạch điều khiển', 220000, 35),
('SP08', N'Motor DC 12V', N'Động cơ', 45000, 75),
('SP09', N'Màn hình LCD 16x2', N'Màn hình', 80000, 50),
('SP10', N'Connector JST 2 pin', N'Đầu nối', 1500, 450);

--
INSERT INTO Hoa_Don_Nhap_Hang VALUES
('PN01', '2025-01-10', 'NV03', 'NCC01'),
('PN02', '2025-01-15', 'NV03', 'NCC02'),
('PN03', '2025-02-01', 'NV03', 'NCC03'),
('PN04', '2025-02-10', 'NV03', 'NCC04');

--
INSERT INTO ChiTiet_HD_Nhap VALUES
('PN01', 'SP01', 100, 13000),
('PN01', 'SP03', 200, 1800),
('PN02', 'SP04', 400, 400),
('PN02', 'SP02', 300, 600),
('PN03', 'SP07', 20, 200000),
('PN03', 'SP06', 50, 23000),
('PN04', 'SP10', 300, 1200),
('PN04', 'SP05', 500, 800);

--
INSERT INTO Hoa_Don_Ban_Hang VALUES
('HD01', '2025-02-05', 'NV02', 'KH01'),
('HD02', '2025-02-08', 'NV05', 'KH03'),
('HD03', '2025-02-10', 'NV02', 'KH02'),
('HD04', '2025-02-12', 'NV05', 'KH05');

--
INSERT INTO ChiTiet_HD_Ban VALUES
('HD01', 'SP01', 10, 15000),
('HD01', 'SP05', 20, 1000),
('HD02', 'SP07', 1, 220000),
('HD02', 'SP06', 2, 25000),
('HD03', 'SP03', 30, 2000),
('HD03', 'SP04', 50, 500),
('HD04', 'SP08', 3, 45000),
('HD04', 'SP09', 1, 80000);

--
INSERT INTO Cung_Cap VALUES
('NCC01', 'SP01'),
('NCC01', 'SP03'),
('NCC02', 'SP02'),
('NCC02', 'SP04'),
('NCC03', 'SP06'),
('NCC03', 'SP07'),
('NCC04', 'SP05'),
('NCC04', 'SP10'),
('NCC05', 'SP08'),
('NCC05', 'SP09');







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