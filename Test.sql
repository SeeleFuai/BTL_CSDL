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
