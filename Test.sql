USE LinhKienDienTuQly
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
FROM Hoa_Don_Ban_Hang HD, ChiTiet_HD_Ban CT, Nhan_Vien NV, Khach_Hang KH, San_Pham SP 
WHERE HD.MaNV = NV.MaNV 
    AND HD.MaKH = KH.MaKH 
    AND HD.MaHD = CT.MaHD 
    AND CT.MaSP = SP.MaSP 
    AND HD.MaHD = 'HD01'
GO