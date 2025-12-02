-- Tìm theo tên
SELECT * FROM [dbo].[San_Pham]
WHERE TenSP LIKE '%IC%';

SELECT * FROM [dbo].[Khach_Hang]
WHERE TenKH LIKE N'Lưu%'

SELECT * FROM [dbo].[Nhan_Vien]
WHERE TenNV LIKE N'Nguyễn%'

SELECT * FROM [dbo].[Nha_Cung_Cap]
WHERE TenNCC LIKE N'%Tech%'


-- Tìm theo phân loại
SELECT * FROM [dbo].[San_Pham]
WHERE LoaiSanPham = 'Màn hình';


-- Tìm theo khoảng giá
SELECT * FROM [dbo].[San_Pham]
WHERE Gia BETWEEN 500000 AND 2000000;

