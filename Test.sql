USE LinhKienDienTuQly


-- SELECT NCC.MaNCC, NCC.TenNCC
-- FROM Nha_Cung_Cap NCC
-- WHERE NCC.MaNCC NOT IN (
--     SELECT HDN.MaNCC
--     FROM Hoa_Don_Nhap_Hang HDN, ChiTiet_HD_Nhap CTN 
--     WHERE 
--         CTN.MaSP = 'SP02'
--         AND HDN.MaPN = CTN.MaPN
-- );


SELECT NCC.MaNCC, NCC.TenNCC
FROM Nha_Cung_Cap NCC
WHERE NCC.MaNCC NOT IN (
    SELECT MaNCC
    FROM Cung_Cap
    WHERE MaSP = 'SP02'
);
