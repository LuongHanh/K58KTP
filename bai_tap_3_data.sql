USE [QLSV]
GO
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh]) VALUES (N'K225480106001', N'Tuấn Anh', NULL)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh]) VALUES (N'K225480106011', N'Khiêm', NULL)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NgaySinh]) VALUES (N'K225480106013', N'Hạnh', NULL)
GO
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'm01', N'csdl', 3)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'm02', N'toán rời rạc', 2)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'm03', N'triết', 3)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'm04', N'mạng máy tính', 3)
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'123', N'điện tử')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'124', N'khoa học cơ bản')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'bm1', N'công nghệ thông tin', N'123')
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'bm2', N'triết học maclenin', N'124')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [MaBM]) VALUES (N'mgv01', N'Nguyễn Văn A', NULL, N'bm1')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [MaBM]) VALUES (N'mgv02', N'Trần Thị H', NULL, N'bm2')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [MaBM]) VALUES (N'mgv03', N'Trịnh Trần Phương Nam', NULL, N'bm2')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [MaBM]) VALUES (N'mgv04', N'Lương Sơn Bá', NULL, N'bm1')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [MaBM]) VALUES (N'mgv05', N'Đặng Văn Thanh', NULL, N'bm1')
GO
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGV]) VALUES (N'lhp001', N'Cơ sở dữ liệu', 2, N'm01', N'mgv04')
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGV]) VALUES (N'lhp002', N'Cơ sở dữ liệu', 3, N'm01', N'mgv01')
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGV]) VALUES (N'lhp003', N'triết', 2, N'm03', N'mgv02')
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGV]) VALUES (N'lhp004', N'mạng máy tính', 2, N'm04', N'mgv05')
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGV]) VALUES (N'lhp005', N'toán rời rạc', 2, N'm02', N'mgv03')
GO
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (1, N'lhp001', N'K225480106013', 8, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (2, N'lhp002', N'K225480106013', 5, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (3, N'lhp001', N'K225480106001', 1, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (4, N'lhp003', N'K225480106011', 9.8, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (5, N'lhp004', N'K225480106013', 9, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (6, N'lhp003', N'K225480106013', 10, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (7, N'lhp005', N'K225480106013', 7, 0.6)
GO
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (1, 1, 8)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (2, 1, 6)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (3, 3, 4)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (4, 3, 10)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (5, 6, 5)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (6, 5, 8)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (7, 4, 10)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (8, 2, 7)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (9, 2, 10)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (10, 4, 9)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (11, 5, 4)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (12, 6, 8)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (13, 7, 8)
INSERT [dbo].[Diem] ([id], [id_dk], [Diem]) VALUES (14, 7, 0)
GO
