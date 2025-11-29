USE LinhKienDienTuQly

-- ADD SP
INSERT INTO San_Pham (MaSP, Ten, LoaiSanPham, Gia ,SoLuongTonKho)
VALUES 
('SP001', 'ASUS B450', 'Mainboard',2500000 ,10),
('SP002','ASROCK B760M Pro RS','Mainboard',2800000,7),
('SP003', N'Intel i5-12400F', 'CPU', 4500000, 15),
('SP004', N'NVIDIA RTX 3060', 'GPU', 9500000, 5),
('SP005', N'Dell 24 inch', 'Monitor', 3500000, 8),
('SP006', N'Cooler Master', 'Fan', 250000, 30),
('SP007', N'Logitech G102', 'Mouse', 450000, 25),
('SP008', N'Adapter nguồn', 'Others', 150000, 50);
GO

-- ADD KH
INSERT INTO Khach_Hang (MaKH, Ten, SDT, DiaChi)
VALUES
('KH001', N'Nguyễn Văn A', '0912345678', N'Hà Nội'),
('KH002', N'Trần Thị B', '0987654321', N'Hồ Chí Minh'),
('KH003', N'Lê Văn C', '0909123456', N'Đà Nẵng'),
('KH004', N'Phạm Thị D', '0934567890', N'Hải Phòng'),
('KH005', N'Hoàng Văn E', '0978123456', N'Cần Thơ');
GO

-- ADD NCC
INSERT INTO Nha_Cung_Cap (MaNCC, TenNCC, SDT, DiaChi)
VALUES
('NCC001', N'Công ty TNHH Linh Kiện Việt', '0912345678', N'Hà Nội'),
('NCC002', N'Công ty CP Máy Tính Hà Thành', '0987654321', N'Hồ Chí Minh'),
('NCC003', N'Công ty TNHH Phụ Kiện Đà Nẵng', '0909123456', N'Đà Nẵng'),
('NCC004', N'Công ty CP Thiết Bị Hải Phòng', '0934567890', N'Hải Phòng'),
('NCC005', N'Công ty TNHH Điện Tử Cần Thơ', '0978123456', N'Cần Thơ');
GO

-- ADD SP-NCC
INSERT INTO Cung_Cap (MaNCC, MaSP)
VALUES 
('NCC001', 'SP001'),
('NCC001', 'SP002'),
('NCC002', 'SP001');
GO


-- Sửa 
-- UPDATE San_Pham
-- SET SoLuong = 15, DonGia = 2400000
-- WHERE MaSP = 'SP001';

-- Xóa 
-- DELETE FROM San_Pham
-- WHERE MaSP = 'SP001';