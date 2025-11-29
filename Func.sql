-- -- Tạo hóa đơn bán hàng
-- INSERT INTO HoaDon (MaHD, NgayLap, MaKH, MaNV)
-- VALUES ('HD001', '2025-11-29', 'KH001', 'NV001');

-- -- Thêm chi tiết hóa đơn
-- INSERT INTO ChiTietHD (MaHD, MaSP, SoLuong, DonGia)
-- VALUES ('HD001', 'SP002', 2, 150000);

-- -- Cập nhật tồn kho sau khi bán
-- UPDATE SanPham
-- SET SoLuong = SoLuong - 2
-- WHERE MaSP = 'SP002';





-- -- Tổng doanh thu theo tháng
-- SELECT MONTH(NgayLap) AS Thang, SUM(SoLuong * DonGia) AS DoanhThu
-- FROM HoaDon HD
-- JOIN ChiTietHD CT ON HD.MaHD = CT.MaHD
-- GROUP BY MONTH(NgayLap);

-- -- Thống kê số lượng tồn kho theo loại sản phẩm
-- SELECT LoaiSP, SUM(SoLuong) AS TongTonKho
-- FROM SanPham
-- GROUP BY LoaiSP;

-- -- Top 5 sản phẩm bán chạy nhất
-- SELECT SP.TenSP, SUM(CT.SoLuong) AS TongBan
-- FROM ChiTietHD CT
-- JOIN SanPham SP ON CT.MaSP = SP.MaSP
-- GROUP BY SP.TenSP
-- ORDER BY TongBan DESC
-- LIMIT 5;

