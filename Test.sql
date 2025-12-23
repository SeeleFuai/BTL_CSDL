USE LinhKienDienTuQly
SELECT HDN.MaPN, 
    HDN.NgayNhap, 
    NV.TenNV, 
    NCC.TenNCC,
    CTN.MaSP, 
    SP.TenSP, 
    CTN.SoLuong, 
    CTN.GiaNhap AS 'GiaNhap'
FROM Hoa_Don_Nhap_Hang HDN, Nhan_Vien NV, Nha_Cung_Cap NCC, ChiTiet_HD_Nhap CTN, San_Pham SP
WHERE HDN.MaNV = NV.MaNV
    AND HDN.MaNCC = NCC.MaNCC
    AND HDN.MaPN = CTN.MaPN
    AND CTN.MaSP = SP.MaSP
    -- AND HDN.MaPN = 'PN02';
    AND YEAR(HDN.NgayNhap) = 202;
GO