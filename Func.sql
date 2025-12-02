
-- -- Tổng doanh thu theo tháng
-- SELECT MONTH(NgayLap) AS Thang, SUM(SoLuong * DonGia) AS DoanhThu
-- FROM HoaDon HD
-- JOIN ChiTietHD CT ON HD.MaHD = CT.MaHD
-- GROUP BY MONTH(NgayLap);

-- -- Thống kê số lượng tồn kho theo loại sản phẩm
-- SELECT LoaiSanPham, SUM(SoLuongTonKho) AS TongTonKho
-- FROM San_Pham
-- GROUP BY LoaiSanPham
-- GO

-- -- Top 5 sản phẩm bán chạy nhất
-- SELECT TOP(5) SP.MaSP, SP.TenSP, SUM(CTHDB.SoLuong) AS TongBan
-- FROM ChiTiet_HD_Ban CTHDB JOIN San_Pham SP ON CTHDB.MaSP = SP.MaSP
-- GROUP BY SP.MaSP,SP.TenSP
-- ORDER BY TongBan DESC
-- GO

-- --TOP khách hàng mua nhiều
-- SELECT KH.MaKH, KH.TenKH, SUM(CT.SoLuong) AS TongSoLuongMua
-- FROM Khach_Hang KH, Hoa_Don_Ban_Hang HD, ChiTiet_HD_Ban CT WHERE HD.MaHD = CT.MaHD AND KH.MaKH = HD.MaKH
-- GROUP BY KH.MaKH, KH.TenKH
-- ORDER BY TongSoLuongMua DESC
-- GO




-- Xem FULL danh sách
-- CHECK FILE SELECT.sql
-- Thêm RECORD 
--CHECK ở file Update.sql


------------------------------ 1. Quản lý Sản Phẩm ------------------------------

-- Sửa TT SP
UPDATE San_Pham
SET Gia = 145000, SoLuong = 12
WHERE MaSP = 'SP01';
GO
-- Xóa SP
DELETE FROM San_Pham
WHERE MaSP = 'SP01';
GO

------------------------------ 2. Quản lý NCC ------------------------------

-- Sửa TT NCC
UPDATE Nha_Cung_Cap
SET DiaChi = 'TP. Hồ Chí Minh', SDT = '0987654321'
WHERE MaNCC = 'NCC01';
GO
-- Xóa TT NCC
DELETE FROM Nha_Cung_Cap
WHERE MaNCC = 'NCC01'
GO
------------------------------ 3. Quản lý Hóa đơn nhập ------------------------------


-- Thêm SP vàp hóa đơn nhập
INSERT INTO ChiTiet_HD_Nhap (MaPN, MaSP, SoLuong, GiaNhap)
VALUES ('PN001', 'SP001', 50, 120000);
GO


-- Cập nhật tồn kho 


-- UPDATE San_Pham
-- SET SoLuongTonKho = SoLuongTonKho + 50
-- WHERE MaSP = 'SP001';
-- GO
-- HOẶC 

CREATE TRIGGER trg_UpdateTonKho_AfterNhap
ON ChiTiet_HD_Nhap
AFTER INSERT
AS
BEGIN
    UPDATE San_Pham
    SET SoLuongTonKho = SoLuongTonKho + i.SoLuong
    FROM San_Pham sp
    JOIN inserted i ON sp.MaSP = i.MaSP;
END;



-- Xem chi tiết hóa đơn Nhập Hàng
SELECT HDN.MaPN, 
    HDN.NgayNhap, 
    NV.TenNV, 
    NCC.TenNCC,
    CTN.MaSP, 
    SP.TenSP, 
    CTN.SoLuong, 
    CTN.Gia AS 'GiaNhap'
FROM Hoa_Don_Nhap_Hang HDN, Nhan_Vien NV, Nha_Cung_Cap NCC, ChiTiet_HD_Nhap CTN, San_Pham SP
WHERE HDN.MaNV = NV.MaNV
    AND HDN.MaNCC = NCC.MaNCC
    AND HDN.MaPN = CTN.MaPN
    AND CTN.MaSP = SP.MaSP
    AND HDN.MaPN = 'PN01';
GO


-- Tính Tổng tiền hóa đơn nhập hàng
SELECT 
    HDN.MaPN,
    HDN.MaNCC,
    HDN.NgayNhap,
    HDN.MaNV AS 'NhanVienNhap',
    SUM(CTN.SoLuong) AS 'TongSoLuong',
    SUM(CTN.Gia * CTN.SoLuong) AS 'TongTienNhap'
FROM Hoa_Don_Nhap_Hang HDN,ChiTiet_HD_Nhap CTN
WHERE HDN.MaPN = CTN.MaPN
GROUP BY
    HDN.MaPN,
    HDN.MaNCC,
    HDN.NgayNhap,
    HDN.MaNV
GO 

-- Xóa hóa đơn 
-- DELETE FROM ChiTiet_HD_Nhap
-- WHERE MaPN = 'PN01'; vì có ON DELETE CASCADE
-- GO
DELETE FROM Hoa_Don_Nhap_Hang
WHERE MaPN = 'PN01';
GO

------------------------------ 4. Quản lý Hóa đơn bán ------------------------------

-- Trừ tồn kho sau khi bán (aka sau khi tạo hóa đơn bán)
CREATE TRIGGER trg_UpdateTonKho_AfterBan
ON ChiTiet_HD_Ban
AFTER INSERT
AS
BEGIN
    UPDATE San_Pham
    SET SoLuongTonKho = SoLuongTonKho - i.SoLuong
    FROM San_Pham sp
    JOIN inserted i ON sp.MaSP = i.MaSP;
END;



--Xem chi tiết hóa đơn Bán
SELECT 
    HD.MaHD, 
    HD.NgayBan, 
    NV.TenNV AS NhanVienBan, 
    KH.TenKH AS KhachHang,
    SP.MaSP, 
    SP.TenSP, 
    CT.SoLuong, 
    CT.Gia,
    (CT.SoLuong * CT.Gia) AS ThanhTien
FROM Hoa_Don_Ban_Hang HD, ChiTiet_HD_Ban CT,Nhan_Vien NV,Khach_Hang KH,San_Pham SP 
WHERE HD.MaNV = NV.MaNV 
    AND HD.MaKH = KH.MaKH 
    AND HD.MaHD = CT.MaHD 
    AND CT.MaSP = SP.MaSP 
    AND HD.MaHD = 'HD01'
GO


--Tính tiền cho toàn bộ hóa đơn Bán
SELECT  
    HD.MaHD, 
    HD.NgayBan,
    HD.MaKH,
    SUM(HDB.SoLuong) AS 'TONG SO LUONG',
    SUM(HDB.SoLuong * HDB.Gia) AS TONGTIEN
FROM Hoa_Don_Ban_Hang HD,ChiTiet_HD_Ban HDB 
WHERE HD.MaHD = HDB.MaHD 
    -- AND HD.MaHD = 'HD01'
GROUP BY 
    HD.MaHD, 
    HD.NgayBan,
    HD.MaKH
ORDER BY (TONGTIEN) DESC
GO


--Xóa hóa đơn 
-- DELETE FROM ChiTiet_HD_Ban
-- WHERE MaHD = 'HD01'; vì có ON DELETE CASCADE
DELETE FROM Hoa_Don_Ban_Hang
WHERE MaHD = 'HD01';
GO


------------------------------ 5. Quản lý Khách hàng ------------------------------

-- Tổng chi tiêu của từng khách hàng
SELECT 
    KH.MaKH, 
    KH.TenKH, 
    KH.SDT, 
    KH.DiaChi,
    SUM(CT.SoLuong * CT.Gia) AS TongChiTieu
FROM Khach_Hang KH, Hoa_Don_Ban_Hang HD,ChiTiet_HD_Ban CT 
WHERE KH.MaKH = HD.MaKH 
    AND HD.MaHD = CT.MaHD
GROUP BY KH.MaKH, KH.TenKH, KH.SDT, KH.DiaChi
ORDER BY TongChiTieu DESC;
GO

-- xóa khách hàng 
DELETE FROM Khach_Hang
WHERE MaKH = 'KH001';
GO

------------------------------ 6. Quản lý Nhân Viên ------------------------------

-- I only see ADD and SHOW STAFF so nothing to do here <(")

-- xóa nhân viên 
DELETE FROM Nhan_Vien
WHERE MaNV = 'NV001';
GO