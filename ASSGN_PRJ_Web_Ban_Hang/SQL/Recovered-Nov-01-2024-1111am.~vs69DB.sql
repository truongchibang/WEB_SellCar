create database Assgn_PRJ301a
USE [Assgn_PRJ301a]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/5/2023 10:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/5/2023 10:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/5/2023 10:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/5/2023 10:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/5/2023 10:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 11/5/2023 10:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 11/5/2023 10:17:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (1, N'admin', N'1', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (8, N'Micah', N'RVV5SR', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (12, N'Howard', N'TSR5MR', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (13, N'Tana', N'EHS8CM', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (15, N'Echo', N'IGE8TN', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (16, N'Slade', N'OFO6QS', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (21, N'Vera', N'CZB2VM', 0, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (23, N'Katell', N'SFS0IW', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (25, N'Robin', N'KIS9AF', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (27, N'admin', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (28, N'mra', N'mra', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (29, N'mrb', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (30, N'Camden', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (31, N'manhdsz', N'123456', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (32, N'sfdfds', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (33, N'aaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (34, N'bbbb', N'1234', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (35, N'luong', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (38, N'mit', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (39, N'aaaaaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (40, N'bantq', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (41, N'thong', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (42, N'cd', N'1234', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (43, N'trungdk', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (44, N'viet', N'123', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'BMW')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'MERCEDES')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'AUDI')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'PORSCHE')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (46, 19, N'Porsche 718 Boxster', N'https://xwatch.vn/upload_images/images/2022/12/07/Xe-Porsche-718-Boxster.jpg', 140, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (47, 19, N'Porsche Taycan Cross Turismo', N'https://xwatch.vn/upload_images/images/2022/12/07/Xe-Porsche-Taycan-Cross-Turismo.jpg', 150, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (48, 20, N'Porsche 911 Carrera', N'Porsche 911 Carrera', 150, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (19, 1, 290, N'hang de vo', CAST(N'2022-04-23' AS Date), 19)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (20, 1, 1, N'1', CAST(N'2023-07-12' AS Date), 19)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (19, N'BMW 3 Series', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/WR5Ce5iQ4f.jpg&w=1200&q=75', 140.0000, N'BMW 3 Series màu b?c', N'Dòng xe BMW 3 Series là m?t dòng xe h?ng sang thu?c phân khúc sedan h?ng trung c?a hãng xe BMW. Dòng xe này dã t?n t?i t? nam 1975 và dã tr?i qua nhi?u phiên b?n và th? h? khác nhau. Dòng xe BMW 3 Series n?i ti?ng v?i s? k?t h?p gi?a ki?u dáng th? thao, hi?u su?t m?nh m? và trang b? công ngh? tiên ti?n.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (20, N'BMW X5', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/y8sw6hBrNf.jpg&w=1200&q=75', 150.0000, N'BMW X5 màu den', N'BMW X5 là m?t dòng xe SUV h?ng sang c?a hãng xe BMW. Ðu?c gi?i thi?u l?n d?u vào nam 1999, BMW X5 dã tr? thành m?t trong nh?ng m?u xe SUV dáng chú ý và du?c ua chu?ng trên toàn th? gi?i. Dòng xe này k?t h?p gi?a tính nang v?n hành m?nh m?, không gian r?ng rãi và tính nang ti?n ích cao c?p.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'BMW M2', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/8AJ7x8LAkD.jpg&w=1200&q=75', 160.0000, N'BMW M2 màu d?', N'BMW M2 là m?t dòng xe th? thao hi?u su?t cao thu?c dòng xe M c?a BMW. Ðu?c gi?i thi?u l?n d?u vào nam 2016, BMW M2 là m?t chi?c coupe nh? g?n nhung m?nh m?, mang d?m tinh th?n th? thao c?a BMW M. Dòng xe này n?i ti?ng v?i s? k?t h?p gi?a ki?u dáng tinh t?, kh? nang v?n hành m?nh m? và tr?i nghi?m lái d?y thú v?.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (22, N'BMW i8', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/ZnvPGXU8Nx.jpg&w=1200&q=75', 170.0000, N'BMW i8 màu tr?ng, dòng xe th? thao hybrid plug-in cao c?p c?a hãng xe BMW.', N'Dòng xe BMW i8 là m?t dòng xe th? thao hybrid plug-in cao c?p c?a hãng xe BMW. Ðu?c gi?i thi?u l?n d?u vào nam 2014, BMW i8 là m?t bi?u tu?ng c?a công ngh? tiên ti?n và thi?t k? tuong lai. Dòng xe này n?i b?t v?i s? k?t h?p gi?a hi?u su?t cao, thi?t k? d?t phá và kh? nang v?n hành b?n v?ng. Dòng xe BMW i8 s? d?ng m?t d?ng co xang turbo 1.5L 3 xi-lanh k?t h?p v?i m?t d?ng co di?n, mang l?i t?ng công su?t hon 360 mã l?c. Xe có kh? nang tang t?c nhanh và v?n t?c t?i da ?n tu?ng. Ch? d? lái "eDrive" cho phép di?n trên m?t kho?ng cách ng?n và ti?t ki?m nhiên li?u.', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (23, N'BMW X6', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/wFYzCjdFNm.jpg&w=1200&q=75', 120.0000, N'BMW X6 màu nâu', N'BMW X6 là m?t dòng xe SUV h?ng sang c?a hãng xe Ð?c BMW, n?i b?t v?i thi?t k? d?c dáo và công ngh? tiên ti?n. Du?i dây là mô t? v? thi?t k? và công ngh? c?a BMW X6, cung nhu l?i ích và s? cao c?p c?a nó trong phân khúc sedan h?ng sang.Dòng xe BMW X6 cung c?p kh? nang v?n hành m?nh m? và linh ho?t. Các phiên b?n c?a X6 du?c trang b? d?ng co công ngh? cao, t? các d?ng co xang turbo tang áp cho d?n các d?ng co diesel hi?u su?t cao. H? d?n d?ng b?n bánh toàn th?i gian xDrive giúp xe vu?t qua m?i di?u ki?n d?a hình và mang l?i tr?i nghi?m lái d?ng l?c m?nh m?.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (24, N'BMW 230i', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/89YdpjPROW.jpg&w=1200&q=75', 130.0000, N'BMW 230i màu tr?ng', N'Dòng xe BMW 230i là m?t dòng xe sedan h?ng sang nh? c?a hãng xe Ð?c BMW. Dòng xe này k?t h?p gi?a thi?t k? tinh t? và công ngh? hi?n d?i d? mang l?i tr?i nghi?m lái d?y thú v?. Du?i dây là mô t? v? thi?t k? và công ngh? c?a BMW 230i, cung nhu l?i ích và s? cao c?p c?a nó trong phân khúc sedan h?ng sang.Dòng xe BMW 230i cung n?i b?t v?i tính linh ho?t và ti?n ích. Kích thu?c nh? g?n c?a xe làm cho vi?c di chuy?n trong dô th? tr? nên d? dàng. Ð?ng th?i, khoang ch?a d? r?ng rãi và gh? sau g?p du?c t?o nên không gian linh ho?t cho vi?c v?n chuy?n hàng hóa ho?c hành lý l?n.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (25, N'Mercedes-AMG One', N'https://th.bing.com/th/id/R.90cf8c6de5aa1a8a33c4f0e82dbff083?rik=fnQODEiA5oBZIQ&pid=ImgRaw&r=0', 1000.0000, N'Mercedes-AMG ONE--The one and only', N'M?u xe hi?u su?t cao s?n xu?t gi?i h?n 275 chi?c toàn th? gi?i, l?p d?ng co hybrid 1.6 V6 công su?t 1.049 mã l?c.

G?n 5 nam sau khi b?n concept ra m?t, Mercedes-AMG One b?n s?n xu?t trình làng. B?n s?n xu?t gi? nguyên thi?t k? so v?i b?n concept t? nam 2017. "Quái thú" trang b? d?ng co hybrid d?t gi?a v?i ngu?n g?c t? F1, công su?t 1.049 mã l?c.

Ð?u xe thi?t k? h?m h?, c?a gió ch? d?ng trên ch?n bùn tru?c, c?a m? hu?ng lên v?i cánh gió sau ch? d?ng. Ðuôi xe thi?t k? l?i v?i du?ng vi?n n?i b?t hon phía trên dèn h?u LED và m?t s? khác bi?t trên b? khu?ch tán l?n, ch?a ba ?ng x? l?y c?m h?ng t? F1. Nh?ng thay d?i khác nhu n?p d?ng co b?ng s?i carbon có th? tháo r?i, guong h?u l?n hon.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (26, N'Mercedes-AMG GT Black Series', N'https://media.doanhnghiepvn.vn/Images/Uploaded/Share/2024/10/20/mercedes-amg-gt-black-series.jpg?format=webp', 800.0000, N'Mercedes-AMG GT Black Series 2021 là chi?c xe d?ng th? 2 v? hi?u su?t c?a thuong hi?u ngôi sao ba cánh.', N'xe du?c trang b? kh?i d?ng co V8 4.0L hoàn toàn m?i, s? d?ng tr?c khu?u ph?ng, cho công su?t t?i da lên con s? 720 mã l?c và momen xo?n c?c d?i 800 Nm. K?t h?p v?i h?p s? ly h?p kép b?y và h? d?n d?ng c?u sau, GT Black Series ch? m?t 3.2 giây d? b?t t?c t? 0 - 100 km/h tru?c khi cán v?n t?c c?c d?i lên d?n 325 km/h.Bên c?nh d?ng co toàn nang, tính khí d?ng h?c c?a Black Series cung du?c t?i uu nh? hai h?c gió l?n và m?t h?c gió ? chính gi?a d?u xe, d?u làm b?ng s?i carbon. Nh?ng di?m n?i b?t khác bao g?m mui xe s?i carbon tích h?p khe gió, lu?i t?n nhi?t l?n hon, mái b?ng s?i carbon, c?a sau b?ng s?i carbon v?i kính tr?ng lu?ng nh?, cánh gió sau s?i carbon và mâm xe 19 inch phía tru?c, 20 inch phía sau.

', 2, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'Mercedes-Maybach S680 4MATIC', N'https://mercedes-vietnam.com.vn/wp-content/uploads/2021/01/Mercedes-Maybach-S680-2022-mercedes-vietnam-1.jpg', 700.0000, N'Mercedes-Maybach S680 2023 thi?t k? di?n m?o m?i d?ng c?p siêu sang', N'Có th? nói, s? d?c bi?t c?a hãng xe này luôn hu?ng t?i k? thu?t hon là s? phô truong hoàn toàn v? thuong hi?u. Thu?n th?c v? công ngh? và b?t m?t nhu m?t món trang s?c, chính là 2 y?u t? luôn du?c Mercedes-Maybach dan xen vào nhau trong su?t th?i gian dài phát tri?n thuong hi?u. Ði?u này du?c ch?ng minh rõ ràng hon bao gi? h?t khi m?u Mercedes-Maybach S680 2023 c?a hãng v?a du?c ra m?t th? tru?ng dã làm c? th? gi?i không ng?ng b?t ng? và thán ph?c.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'Mercedes-Maybach GLS 600 4MATIC', N'https://th.bing.com/th/id/OIP.i3u_DckcF4KdPpkFAB7z1gHaEK?rs=1&pid=ImgDetMain', 600.0000, N'Mercedes-Maybach GLS 600 4MATIC', N'Xe Mercedes-Maybach GLS 600 4MATIC du?c phát tri?n d?a trên h? th?ng khung g?m c?a m?u SUV c? l?n Mercedes-Benz GLS-Class nên GLS 600 s? h?u vóc dáng b? v? và uy nghiêm c?a m?t m?u xe du?c ví nhu chuyên co m?t d?t v?i kích thu?c chi?u dài x r?ng x cao l?n lu?t là: 5.226 x 2.030 x 1.845 (mm).
Tru?c h?t dánh giá Mercedes-Maybach GLS 600 4MATIC ? ph?n d?u xe t?o cái nhìn h?m h? cá tính nhung v?n không kém ph?n sang tr?ng. Xe s? d?ng lu?i t?n nhi?t kích thu?c l?n theo phong cách c?a dòng xe Maybach, v?i di?m nh?n là các thanh chrome sáng bóng và giá tr? v?i dòng ch? “Maybach” du?c dính ? phía trên c?a khung vi?n lu?i t?n nhi?t. Logo “Ngôi sao ba cánh” du?c d?t nhô cao trên n?p capô làm di?m nh?n cho s? uy quy?n và d?ng c?p. Body kit c?n tru?c thi?t k? li?n kh?i v?i các ho? ti?t m?t cáo m? chrome khi?n chi?c xe tr? nên khoáng d?t r?ng rãi hon.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Mercedes-Benz G-Class G 63 AMG', N'https://th.bing.com/th/id/R.97c8e51c814348310ce38a6c3b24b517?rik=47XRo3vzO%2fg3%2fg&pid=ImgRaw&r=0', 620.0000, N'Mercedes-Benz G-Class G 63 AMG', N'Mercedes-Benz G-Class là m?t trong s? nh?ng dòng SUV d?a hình n?i ti?ng v?i kh? nang off-road d?nh cao, m?t bi?u tu?ng vu?t th?i gian. G-Class b?t d?u du?c m? bán t? nam 1979, d?n nam 2002 b?n hi?u su?t cao mang tên Mercedes AMG G 63 chính th?c ra d?i.

Mercedes-Benz G 63 hi?n dang ? vòng d?i th? 2, trình làng vào d?u nam 2018. V? ngoài h?m h?, b?t m?t cùng kh? nang v?n hành m?nh m?, thách th?c m?i d?a hình khó c?a Mercedes-Benz G 63 nhanh chóng nh?n du?c s? quan tâm l?n t? phía các d?i gia Vi?t.

Tháng 03/2022, phiên b?n gi?i h?n Mercedes-AMG G 63 edition 55 2023 dã chính th?c ra m?t nhân d?p k? ni?m 55 nam ngày thành l?p thuong hi?u AMG. S?n ph?m s? có nhi?u chi ti?t d?c l? hon so v?i b?n thu?ng, song s? lu?ng xe ch? gi?i h?n 55 chi?c trên toàn c?u. Ðu?c bi?t, nh?ng chi?c 63 edition 55 d?u tiên dã c?p b?n d?i lý chính hãng Vi?t Nam và s?n sàng bàn giao d?n các d?i gia Vi?t.

Ð?i th? cùng nhóm và cùng t?m giá v?i Mercedes-Benz G63 t?i Vi?t Nam hi?n nay có th? k? d?n nh?ng cái tên nhu Bently Bentayga, BMW X7, Land Rover Range Rover hay Lexus LX570.', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'Audi R8 Exclusive Selection', N'https://thegioiaudi.com/wp-content/uploads/2022/06/xe-audi-dep-nhat-1.jpg', 620.0000, N'Audi R8 Exclusive Selection là m?t trong nh?ng m?u xe Audi d?p nh?t ra m?t th? tru?ng M? vào nam 2012. ', N'Audi R8 Exclusive Selection là m?t trong nh?ng m?u xe Audi d?p nh?t ra m?t th? tru?ng M? vào nam 2012. Theo nhà s?n xu?t, phiên b?n gi?i h?n này ch? du?c bán ra v?i 50 chi?c.

Ði?m nh?n dáng chú ý c?a Audi R8 Exclusive Selection d?n t? thi?t k? ngo?i th?t v?i tông màu xám – Daytona Gray.  M?t s? chi ti?t n?i b?t khác c?a xe g?m có lu?i t?n nhi?t và ?ng x? màu den huy?n bí, b? la-zang h?p kim có du?ng kính 19 inch toát lên v? d?p ?n tu?ng, cùng v?i dó là dèn h?u và k?p phanh màu d? du?c l?y c?m h?ng t? chi?c R8 GT….
Ch?t li?u carbon du?c ?ng d?ng khá nhi?u trên m?u xe này, t? c?n tru?c và h? th?ng khu?ch tán gió cho d?n m?t vài chi ti?t trên b?ng taplo, b?ng di?u khi?n. Bên trong cabin, n?i th?t Audi R8 Exclusive Selection s? d?ng gam màu den là ch? y?u, du?c di?m xuy?t b?i nh?ng du?ng ch? khâu màu d? n?i b?t.

“Trái tim” c?a Audi R8 Exclusive Selection là kh?i d?ng co V8 dung tích 4,2 lít công su?t 430 mã l?c ho?c d?ng co V10 dung tích 5,2 lít công su?t 525 mã l?c, h?a h?n mang d?n kh? nang v?n hành vô cùng m?nh m?.', 3, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'Audi TT 20th Anniversary Edition', N'https://thegioiaudi.com/wp-content/uploads/2022/06/xe-audi-dep-nhat-2.jpg', 565.0000, N'Audi TT 20th Anniversary Edition – M?t trong nh?ng xe Audi d?p nh?t', N'Audi TT 20th Anniversary Edition du?c thuong hi?u Audi ra m?t th? tru?ng nhân d?p k? ni?m sinh nh?t dòng xe mui tr?n TT tròn 20 tu?i.

Ðây là m?t trong nh?ng m?u xe Audi d?p nh?t du?c phát tri?n d?a trên ngu?n c?m h?ng t? m?u concept TTS Roadster t?ng ra m?t l?n d?u t?i Tri?n lãm Tokyo Motor Show nam 1995. V? thi?t k?, Audi TT 20th Anniversary Edition n?i b?t v?i màu son ngo?i th?t den bóng, n?i b?t v?i nh?ng chi ti?t nhu b? mâm xe có kích thu?c 19 inch, ?ng x? s? d?ng ch?t li?u thép không g? và dèn h?u mang công ngh? OLED.
Ngoài ra, d? xe thêm ph?n n?i b?t cung nhu dánh d?u s? khác bi?t so v?i nh?ng th? h? tru?c, logo 20 nam TT 20th Anniversary Edition du?c g?n ? ngay vòm bánh tru?c.

Zoom c?n c?nh n?i th?t bên trong, các chi ti?t nhu gh? ng?i, tay v?n c?a, b?ng di?u khi?n c?a xe d?u s? d?ng ch?t li?u da Nappa cao c?p. Ð?c bi?t, di?m xuy?t trên ph?n da màu nâu là ch? khâu tuong ph?n góp ph?n t?o di?m nh?n cho n?i th?t xe.

V? kh? nang v?n hành, Audi TT 20th Anniversary Edition du?c trang b? kh?i d?ng co xang 4 xy-lanh th?ng hàng 2.0L tang áp. Cùng v?i dó là h?p s? t? d?ng ly h?p kép 7 c?p giúp mang d?n công su?t t?i da lên d?n 228 mã l?c. Khi v?n hành, Audi TT 20th Anniversary Edition mang d?n kh? nang tang t?c t? 0 – 100km/h trong th?i gian ch? 5,2 giây.', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'Audi A4 Avant Jon Olsson Camo Edition', N'https://thegioiaudi.com/wp-content/uploads/2022/06/xe-audi-dep-nhat-3.jpg', 550.0000, N'M?u xe Audi d?p nh?t d?m ch?t th? thao', N'Audi A4 Avant Jon Olsson Camo Edition là m?u xe mang tên v?n d?ng viên tru?t tuy?t Jon Olsson. Ông là m?t v?n d?ng viên chuyên nghi?p có ni?m dam mê v?i xe hoi và là ngu?i s? h?u hàng ch?c chi?c xe du?c d?t tên theo chính tên mình.
V?i Audi A4 Avant Jon Olsson Camo Edition, phiên b?n này không ch? s? h?u thi?t k? d?p d?m ch?t th? thao v?i gói trang trí ngo?i th?t Audi S-Line mà còn ?n tu?ng b?i kh? nang v?n hành t?i uu khi di chuy?n trên d?a hình bang tuy?t. C? th?, xe du?c trang b? ph?n l?p mùa dông v?i lazang 19 inch, d?ng co TDI dung tích 2 lít. Xe cho kh? nang tang t?c t? 0 – 100km/h ch? v?i th?i gian 7,3 giây, t?c d? t?i da 241km/gi?.', 3, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'Audi R8 Green Hell Edition', N'https://thegioiaudi.com/wp-content/uploads/2022/06/xe-audi-dep-nhat-4.jpg', 885.0000, N'Audi R8 Green Hell Edition là phiên b?n k? ni?m chi?n th?ng t?i gi?i dua 24 Hours Nürburgring', N'Audi R8 Green Hell Edition là m?u xe ra m?t th? tru?ng nhân d?p R8 LMS cán m?c 5 l?n giành chi?n th?ng t?i gi?i dua 24 Hours Nürburgring.

V?i ý nghia trên, m?u xe Audi d?p nh?t này du?c nhà s?n xu?t chú tr?ng d?c bi?t d?n khâu thi?t k?. Theo dó, xe s? h?u ngo?i th?t khá ?n tu?ng, n?i b?t v?i màu son xanh lá di?m xuy?t là nh?ng du?ng nét màu d? và den, tuong t? nhu màu áo xe dua trên chi?c Audi R8 LMS huy?n tho?i.

Tuy nhiên, tùy theo nhu c?u c?a khách hàng mà nhà s?n xu?t cung có th? thay d?i màu son cho xe v?i nh?ng tông màu nhu tr?ng Ibis White, xám Daytona Gray và den Mythos Black. Các chi ti?t n?i b?t khác c?a ngo?i th?t g?m có b? guong chi?u h?u, cánh gió sau, h?c gió màu den, mâm xe kích thu?c 20 inch v?i màu d? n?i b?t.
Di chuy?n vào khoang n?i th?t, m?u xe này s? d?ng ch?t li?u da Alcantara cho h?u h?t các chi ti?t bên trong, t? vô lang cho d?n b?ng táp lô hay ph?n ?p c?a. Tô di?m cho các chi ti?t này là nh?ng du?ng ch? khâu màu xanh lam, t?p trung ? nh?ng v? trí nhu gh? ng?i hay vi?n c?a và ph?n vô lang.

“Trái tim” c?a xe v?n là kh?i d?ng co V10 hút khí t? nhiên v?i dung tích 5,2 lít cho kh? nang s?n sinh công su?t 612 mã l?c, mô-men xo?n 550 Nm. Xe có kh? nang tang t?c 0 – 100km/h trong 3,1 giây tru?c khi d?t v?n t?c t?i da kho?ng 331km/h.', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (34, N'Porsche Macan', N'https://xwatch.vn/upload_images/images/2022/12/07/Xe-Porsche-Macan.jpg', 650.0000, N'Porsche Macan', N'Porsche Macan du?c ra d?i vào nam 2014 và du?c s?n xu?t, l?p ráp t?i Ð?c. Macan là m?t trong nh?ng dòng xe SUV du?c ngu?i tiêu dùng dón nh?n n?ng nhi?t, dòng xe Porsche Macan mang d?m nét h?m h?, to l?n c?a các dòng xe SUV nhung l?i vô cùng m?m m?i nh? s? h?u các góc c?nh bo tròn tinh t?. Uu di?m c?a thi?t k? xe Porsche Macan là n?i th?t cao c?p, nhi?u trang b?, tr?i nghi?m cabin gi?ng xe th? thao g?m th?p di kèm d?ng co m?nh m?, c?m giác lái c?c k? chân th?t. ', 4, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (35, N'Porsche Panamera', N'https://xwatch.vn/upload_images/images/2022/12/07/Xe-Porsche-Panamera.jpg', 680.0000, N'Xe Porsche Panamera', N'Ra m?t công chúng l?n d?u tiên vào tháng 3/2009 t?i Tri?n lãm Ô tô Thu?ng H?i, Trung Qu?c, Porsche Panamera khi?n nhi?u ngu?i theo ch? nghia Porsche thu?n túy nghi ng?i gi?ng nhu dã t?ng x?y ra v?i chi?c SUV Cayenne (ra m?t 2002). 

Hu?ng d?n phong cách c?a m?t chi?c sedan th? thao h?ng sang c? l?n, Panamera có ngo?i hình tuong d?i l?n v?i mui xe và duôi xe du?c kéo dài, có thi?t k? tuong t? gi?ng m?t chi?c 911 dã kéo dài. Bên trong n?i th?t chú tr?ng ti?n nghi di kèm các công ngh? hi?n d?i mang t?i nh?ng tr?i nghi?m “dáng d?ng ti?n bát g?o”.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (36, N'Porsche 911 GT3', N'https://xwatch.vn/upload_images/images/2022/12/07/Xe-Porsche-911-GT3.jpg', 700.0000, N'Xe Porsche 911 GT3', N'Mang s? m?nh là bá ch? th? tru?ng xe dua, Porsche 911 GT3 du?c trang b? d?ng co g?m 503 mã l?c và 496 mô-men xo?n chính cung c?p nang lu?ng m?nh m?, d?t t?c d? “kh?ng” mà hi?m có hãng xe nào b?t k?p. M?c dù c?c “hot” nhung d? s? h?u m?t chi?c xe thu?c dòng này, b?n ph?i b? ra m?t s? ti?n hon 12 t? vô cùng d?t d? so v?i thu nh?p chung c?a ngu?i dân Vi?t Nam nên r?t khó ti?p c?n. ', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (37, N'Porsche 718 Cayman', N'https://hips.hearstapps.com/hmg-prod/images/718-style-edition-18-1667334774.jpg?crop=0.599xw:0.450xh;0.249xw,0.203xh&resize=1200:*', 650.0000, N'Xe Porsche 718 Cayman', N'Là dòng xe th? thao couple hai c?a v?i hai ch? ng?i m?i du?c d?nh danh l?i t? nam 2016 c?a Porsche. Cách d?t tên Porsche 718 Cayman du?c l?y c?m h?ng t? dòng xe th? thao 718 ra d?i vào nam 1957. Ð? tang s? n?i b?t tru?c dám dông, các tay choi th? thi?t thu?ng k?t h?p xe 718 Cayman v?i nh?ng món ph? ki?n Porsche design nhu th?i trang, kính mát,... d?u là nh?ng món d? thi?t th?c, phù h?p cho vi?c lái xe dua t?c d? cao. ', 4, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'viet', N'12345678', N'hanoi')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([AccountID])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
