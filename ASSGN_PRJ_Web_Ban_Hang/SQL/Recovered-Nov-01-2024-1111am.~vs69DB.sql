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

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (19, N'BMW 3 Series', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/WR5Ce5iQ4f.jpg&w=1200&q=75', 140.0000, N'BMW 3 Series m�u b?c', N'D�ng xe BMW 3 Series l� m?t d�ng xe h?ng sang thu?c ph�n kh�c sedan h?ng trung c?a h�ng xe BMW. D�ng xe n�y d� t?n t?i t? nam 1975 v� d� tr?i qua nhi?u phi�n b?n v� th? h? kh�c nhau. D�ng xe BMW 3 Series n?i ti?ng v?i s? k?t h?p gi?a ki?u d�ng th? thao, hi?u su?t m?nh m? v� trang b? c�ng ngh? ti�n ti?n.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (20, N'BMW X5', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/y8sw6hBrNf.jpg&w=1200&q=75', 150.0000, N'BMW X5 m�u den', N'BMW X5 l� m?t d�ng xe SUV h?ng sang c?a h�ng xe BMW. �u?c gi?i thi?u l?n d?u v�o nam 1999, BMW X5 d� tr? th�nh m?t trong nh?ng m?u xe SUV d�ng ch� � v� du?c ua chu?ng tr�n to�n th? gi?i. D�ng xe n�y k?t h?p gi?a t�nh nang v?n h�nh m?nh m?, kh�ng gian r?ng r�i v� t�nh nang ti?n �ch cao c?p.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'BMW M2', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/8AJ7x8LAkD.jpg&w=1200&q=75', 160.0000, N'BMW M2 m�u d?', N'BMW M2 l� m?t d�ng xe th? thao hi?u su?t cao thu?c d�ng xe M c?a BMW. �u?c gi?i thi?u l?n d?u v�o nam 2016, BMW M2 l� m?t chi?c coupe nh? g?n nhung m?nh m?, mang d?m tinh th?n th? thao c?a BMW M. D�ng xe n�y n?i ti?ng v?i s? k?t h?p gi?a ki?u d�ng tinh t?, kh? nang v?n h�nh m?nh m? v� tr?i nghi?m l�i d?y th� v?.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (22, N'BMW i8', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/ZnvPGXU8Nx.jpg&w=1200&q=75', 170.0000, N'BMW i8 m�u tr?ng, d�ng xe th? thao hybrid plug-in cao c?p c?a h�ng xe BMW.', N'D�ng xe BMW i8 l� m?t d�ng xe th? thao hybrid plug-in cao c?p c?a h�ng xe BMW. �u?c gi?i thi?u l?n d?u v�o nam 2014, BMW i8 l� m?t bi?u tu?ng c?a c�ng ngh? ti�n ti?n v� thi?t k? tuong lai. D�ng xe n�y n?i b?t v?i s? k?t h?p gi?a hi?u su?t cao, thi?t k? d?t ph� v� kh? nang v?n h�nh b?n v?ng. D�ng xe BMW i8 s? d?ng m?t d?ng co xang turbo 1.5L 3 xi-lanh k?t h?p v?i m?t d?ng co di?n, mang l?i t?ng c�ng su?t hon 360 m� l?c. Xe c� kh? nang tang t?c nhanh v� v?n t?c t?i da ?n tu?ng. Ch? d? l�i "eDrive" cho ph�p di?n tr�n m?t kho?ng c�ch ng?n v� ti?t ki?m nhi�n li?u.', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (23, N'BMW X6', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/wFYzCjdFNm.jpg&w=1200&q=75', 120.0000, N'BMW X6 m�u n�u', N'BMW X6 l� m?t d�ng xe SUV h?ng sang c?a h�ng xe �?c BMW, n?i b?t v?i thi?t k? d?c d�o v� c�ng ngh? ti�n ti?n. Du?i d�y l� m� t? v? thi?t k? v� c�ng ngh? c?a BMW X6, cung nhu l?i �ch v� s? cao c?p c?a n� trong ph�n kh�c sedan h?ng sang.D�ng xe BMW X6 cung c?p kh? nang v?n h�nh m?nh m? v� linh ho?t. C�c phi�n b?n c?a X6 du?c trang b? d?ng co c�ng ngh? cao, t? c�c d?ng co xang turbo tang �p cho d?n c�c d?ng co diesel hi?u su?t cao. H? d?n d?ng b?n b�nh to�n th?i gian xDrive gi�p xe vu?t qua m?i di?u ki?n d?a h�nh v� mang l?i tr?i nghi?m l�i d?ng l?c m?nh m?.', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (24, N'BMW 230i', N'https://www.carmudi.vn/_next/image/?url=https://static.carmudi.vn/wp-content/uploads/2023-05/89YdpjPROW.jpg&w=1200&q=75', 130.0000, N'BMW 230i m�u tr?ng', N'D�ng xe BMW 230i l� m?t d�ng xe sedan h?ng sang nh? c?a h�ng xe �?c BMW. D�ng xe n�y k?t h?p gi?a thi?t k? tinh t? v� c�ng ngh? hi?n d?i d? mang l?i tr?i nghi?m l�i d?y th� v?. Du?i d�y l� m� t? v? thi?t k? v� c�ng ngh? c?a BMW 230i, cung nhu l?i �ch v� s? cao c?p c?a n� trong ph�n kh�c sedan h?ng sang.D�ng xe BMW 230i cung n?i b?t v?i t�nh linh ho?t v� ti?n �ch. K�ch thu?c nh? g?n c?a xe l�m cho vi?c di chuy?n trong d� th? tr? n�n d? d�ng. �?ng th?i, khoang ch?a d? r?ng r�i v� gh? sau g?p du?c t?o n�n kh�ng gian linh ho?t cho vi?c v?n chuy?n h�ng h�a ho?c h�nh l� l?n.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (25, N'Mercedes-AMG One', N'https://th.bing.com/th/id/R.90cf8c6de5aa1a8a33c4f0e82dbff083?rik=fnQODEiA5oBZIQ&pid=ImgRaw&r=0', 1000.0000, N'Mercedes-AMG ONE--The one and only', N'M?u xe hi?u su?t cao s?n xu?t gi?i h?n 275 chi?c to�n th? gi?i, l?p d?ng co hybrid 1.6 V6 c�ng su?t 1.049 m� l?c.

G?n 5 nam sau khi b?n concept ra m?t, Mercedes-AMG One b?n s?n xu?t tr�nh l�ng. B?n s?n xu?t gi? nguy�n thi?t k? so v?i b?n concept t? nam 2017. "Qu�i th�" trang b? d?ng co hybrid d?t gi?a v?i ngu?n g?c t? F1, c�ng su?t 1.049 m� l?c.

�?u xe thi?t k? h?m h?, c?a gi� ch? d?ng tr�n ch?n b�n tru?c, c?a m? hu?ng l�n v?i c�nh gi� sau ch? d?ng. �u�i xe thi?t k? l?i v?i du?ng vi?n n?i b?t hon ph�a tr�n d�n h?u LED v� m?t s? kh�c bi?t tr�n b? khu?ch t�n l?n, ch?a ba ?ng x? l?y c?m h?ng t? F1. Nh?ng thay d?i kh�c nhu n?p d?ng co b?ng s?i carbon c� th? th�o r?i, guong h?u l?n hon.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (26, N'Mercedes-AMG GT Black Series', N'https://media.doanhnghiepvn.vn/Images/Uploaded/Share/2024/10/20/mercedes-amg-gt-black-series.jpg?format=webp', 800.0000, N'Mercedes-AMG GT Black Series 2021 l� chi?c xe d?ng th? 2 v? hi?u su?t c?a thuong hi?u ng�i sao ba c�nh.', N'xe du?c trang b? kh?i d?ng co V8 4.0L ho�n to�n m?i, s? d?ng tr?c khu?u ph?ng, cho c�ng su?t t?i da l�n con s? 720 m� l?c v� momen xo?n c?c d?i 800 Nm. K?t h?p v?i h?p s? ly h?p k�p b?y v� h? d?n d?ng c?u sau, GT Black Series ch? m?t 3.2 gi�y d? b?t t?c t? 0 - 100 km/h tru?c khi c�n v?n t?c c?c d?i l�n d?n 325 km/h.B�n c?nh d?ng co to�n nang, t�nh kh� d?ng h?c c?a Black Series cung du?c t?i uu nh? hai h?c gi� l?n v� m?t h?c gi� ? ch�nh gi?a d?u xe, d?u l�m b?ng s?i carbon. Nh?ng di?m n?i b?t kh�c bao g?m mui xe s?i carbon t�ch h?p khe gi�, lu?i t?n nhi?t l?n hon, m�i b?ng s?i carbon, c?a sau b?ng s?i carbon v?i k�nh tr?ng lu?ng nh?, c�nh gi� sau s?i carbon v� m�m xe 19 inch ph�a tru?c, 20 inch ph�a sau.

', 2, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'Mercedes-Maybach S680 4MATIC', N'https://mercedes-vietnam.com.vn/wp-content/uploads/2021/01/Mercedes-Maybach-S680-2022-mercedes-vietnam-1.jpg', 700.0000, N'Mercedes-Maybach S680 2023 thi?t k? di?n m?o m?i d?ng c?p si�u sang', N'C� th? n�i, s? d?c bi?t c?a h�ng xe n�y lu�n hu?ng t?i k? thu?t hon l� s? ph� truong ho�n to�n v? thuong hi?u. Thu?n th?c v? c�ng ngh? v� b?t m?t nhu m?t m�n trang s?c, ch�nh l� 2 y?u t? lu�n du?c Mercedes-Maybach dan xen v�o nhau trong su?t th?i gian d�i ph�t tri?n thuong hi?u. �i?u n�y du?c ch?ng minh r� r�ng hon bao gi? h?t khi m?u Mercedes-Maybach S680 2023 c?a h�ng v?a du?c ra m?t th? tru?ng d� l�m c? th? gi?i kh�ng ng?ng b?t ng? v� th�n ph?c.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'Mercedes-Maybach GLS 600 4MATIC', N'https://th.bing.com/th/id/OIP.i3u_DckcF4KdPpkFAB7z1gHaEK?rs=1&pid=ImgDetMain', 600.0000, N'Mercedes-Maybach GLS 600 4MATIC', N'Xe Mercedes-Maybach GLS 600 4MATIC du?c ph�t tri?n d?a tr�n h? th?ng khung g?m c?a m?u SUV c? l?n Mercedes-Benz GLS-Class n�n GLS 600 s? h?u v�c d�ng b? v? v� uy nghi�m c?a m?t m?u xe du?c v� nhu chuy�n co m?t d?t v?i k�ch thu?c chi?u d�i x r?ng x cao l?n lu?t l�: 5.226 x 2.030 x 1.845 (mm).
Tru?c h?t d�nh gi� Mercedes-Maybach GLS 600 4MATIC ? ph?n d?u xe t?o c�i nh�n h?m h? c� t�nh nhung v?n kh�ng k�m ph?n sang tr?ng. Xe s? d?ng lu?i t?n nhi?t k�ch thu?c l?n theo phong c�ch c?a d�ng xe Maybach, v?i di?m nh?n l� c�c thanh chrome s�ng b�ng v� gi� tr? v?i d�ng ch? �Maybach� du?c d�nh ? ph�a tr�n c?a khung vi?n lu?i t?n nhi?t. Logo �Ng�i sao ba c�nh� du?c d?t nh� cao tr�n n?p cap� l�m di?m nh?n cho s? uy quy?n v� d?ng c?p. Body kit c?n tru?c thi?t k? li?n kh?i v?i c�c ho? ti?t m?t c�o m? chrome khi?n chi?c xe tr? n�n kho�ng d?t r?ng r�i hon.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Mercedes-Benz G-Class G 63 AMG', N'https://th.bing.com/th/id/R.97c8e51c814348310ce38a6c3b24b517?rik=47XRo3vzO%2fg3%2fg&pid=ImgRaw&r=0', 620.0000, N'Mercedes-Benz G-Class G 63 AMG', N'Mercedes-Benz G-Class l� m?t trong s? nh?ng d�ng SUV d?a h�nh n?i ti?ng v?i kh? nang off-road d?nh cao, m?t bi?u tu?ng vu?t th?i gian. G-Class b?t d?u du?c m? b�n t? nam 1979, d?n nam 2002 b?n hi?u su?t cao mang t�n Mercedes AMG G 63 ch�nh th?c ra d?i.

Mercedes-Benz G 63 hi?n dang ? v�ng d?i th? 2, tr�nh l�ng v�o d?u nam 2018. V? ngo�i h?m h?, b?t m?t c�ng kh? nang v?n h�nh m?nh m?, th�ch th?c m?i d?a h�nh kh� c?a Mercedes-Benz G 63 nhanh ch�ng nh?n du?c s? quan t�m l?n t? ph�a c�c d?i gia Vi?t.

Th�ng 03/2022, phi�n b?n gi?i h?n Mercedes-AMG G 63 edition 55 2023 d� ch�nh th?c ra m?t nh�n d?p k? ni?m 55 nam ng�y th�nh l?p thuong hi?u AMG. S?n ph?m s? c� nhi?u chi ti?t d?c l? hon so v?i b?n thu?ng, song s? lu?ng xe ch? gi?i h?n 55 chi?c tr�n to�n c?u. �u?c bi?t, nh?ng chi?c 63 edition 55 d?u ti�n d� c?p b?n d?i l� ch�nh h�ng Vi?t Nam v� s?n s�ng b�n giao d?n c�c d?i gia Vi?t.

�?i th? c�ng nh�m v� c�ng t?m gi� v?i Mercedes-Benz G63 t?i Vi?t Nam hi?n nay c� th? k? d?n nh?ng c�i t�n nhu Bently Bentayga, BMW X7, Land Rover Range Rover hay Lexus LX570.', 2, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'Audi R8 Exclusive Selection', N'https://thegioiaudi.com/wp-content/uploads/2022/06/xe-audi-dep-nhat-1.jpg', 620.0000, N'Audi R8 Exclusive Selection l� m?t trong nh?ng m?u xe Audi d?p nh?t ra m?t th? tru?ng M? v�o nam 2012. ', N'Audi R8 Exclusive Selection l� m?t trong nh?ng m?u xe Audi d?p nh?t ra m?t th? tru?ng M? v�o nam 2012. Theo nh� s?n xu?t, phi�n b?n gi?i h?n n�y ch? du?c b�n ra v?i 50 chi?c.

�i?m nh?n d�ng ch� � c?a Audi R8 Exclusive Selection d?n t? thi?t k? ngo?i th?t v?i t�ng m�u x�m � Daytona Gray.  M?t s? chi ti?t n?i b?t kh�c c?a xe g?m c� lu?i t?n nhi?t v� ?ng x? m�u den huy?n b�, b? la-zang h?p kim c� du?ng k�nh 19 inch to�t l�n v? d?p ?n tu?ng, c�ng v?i d� l� d�n h?u v� k?p phanh m�u d? du?c l?y c?m h?ng t? chi?c R8 GT�.
Ch?t li?u carbon du?c ?ng d?ng kh� nhi?u tr�n m?u xe n�y, t? c?n tru?c v� h? th?ng khu?ch t�n gi� cho d?n m?t v�i chi ti?t tr�n b?ng taplo, b?ng di?u khi?n. B�n trong cabin, n?i th?t Audi R8 Exclusive Selection s? d?ng gam m�u den l� ch? y?u, du?c di?m xuy?t b?i nh?ng du?ng ch? kh�u m�u d? n?i b?t.

�Tr�i tim� c?a Audi R8 Exclusive Selection l� kh?i d?ng co V8 dung t�ch 4,2 l�t c�ng su?t 430 m� l?c ho?c d?ng co V10 dung t�ch 5,2 l�t c�ng su?t 525 m� l?c, h?a h?n mang d?n kh? nang v?n h�nh v� c�ng m?nh m?.', 3, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'Audi TT 20th Anniversary Edition', N'https://thegioiaudi.com/wp-content/uploads/2022/06/xe-audi-dep-nhat-2.jpg', 565.0000, N'Audi TT 20th Anniversary Edition � M?t trong nh?ng xe Audi d?p nh?t', N'Audi TT 20th Anniversary Edition du?c thuong hi?u Audi ra m?t th? tru?ng nh�n d?p k? ni?m sinh nh?t d�ng xe mui tr?n TT tr�n 20 tu?i.

��y l� m?t trong nh?ng m?u xe Audi d?p nh?t du?c ph�t tri?n d?a tr�n ngu?n c?m h?ng t? m?u concept TTS Roadster t?ng ra m?t l?n d?u t?i Tri?n l�m Tokyo Motor Show nam 1995. V? thi?t k?, Audi TT 20th Anniversary Edition n?i b?t v?i m�u son ngo?i th?t den b�ng, n?i b?t v?i nh?ng chi ti?t nhu b? m�m xe c� k�ch thu?c 19 inch, ?ng x? s? d?ng ch?t li?u th�p kh�ng g? v� d�n h?u mang c�ng ngh? OLED.
Ngo�i ra, d? xe th�m ph?n n?i b?t cung nhu d�nh d?u s? kh�c bi?t so v?i nh?ng th? h? tru?c, logo 20 nam TT 20th Anniversary Edition du?c g?n ? ngay v�m b�nh tru?c.

Zoom c?n c?nh n?i th?t b�n trong, c�c chi ti?t nhu gh? ng?i, tay v?n c?a, b?ng di?u khi?n c?a xe d?u s? d?ng ch?t li?u da Nappa cao c?p. �?c bi?t, di?m xuy?t tr�n ph?n da m�u n�u l� ch? kh�u tuong ph?n g�p ph?n t?o di?m nh?n cho n?i th?t xe.

V? kh? nang v?n h�nh, Audi TT 20th Anniversary Edition du?c trang b? kh?i d?ng co xang 4 xy-lanh th?ng h�ng 2.0L tang �p. C�ng v?i d� l� h?p s? t? d?ng ly h?p k�p 7 c?p gi�p mang d?n c�ng su?t t?i da l�n d?n 228 m� l?c. Khi v?n h�nh, Audi TT 20th Anniversary Edition mang d?n kh? nang tang t?c t? 0 � 100km/h trong th?i gian ch? 5,2 gi�y.', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'Audi A4 Avant Jon Olsson Camo Edition', N'https://thegioiaudi.com/wp-content/uploads/2022/06/xe-audi-dep-nhat-3.jpg', 550.0000, N'M?u xe Audi d?p nh?t d?m ch?t th? thao', N'Audi A4 Avant Jon Olsson Camo Edition l� m?u xe mang t�n v?n d?ng vi�n tru?t tuy?t Jon Olsson. �ng l� m?t v?n d?ng vi�n chuy�n nghi?p c� ni?m dam m� v?i xe hoi v� l� ngu?i s? h?u h�ng ch?c chi?c xe du?c d?t t�n theo ch�nh t�n m�nh.
V?i Audi A4 Avant Jon Olsson Camo Edition, phi�n b?n n�y kh�ng ch? s? h?u thi?t k? d?p d?m ch?t th? thao v?i g�i trang tr� ngo?i th?t Audi S-Line m� c�n ?n tu?ng b?i kh? nang v?n h�nh t?i uu khi di chuy?n tr�n d?a h�nh bang tuy?t. C? th?, xe du?c trang b? ph?n l?p m�a d�ng v?i lazang 19 inch, d?ng co TDI dung t�ch 2 l�t. Xe cho kh? nang tang t?c t? 0 � 100km/h ch? v?i th?i gian 7,3 gi�y, t?c d? t?i da 241km/gi?.', 3, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'Audi R8 Green Hell Edition', N'https://thegioiaudi.com/wp-content/uploads/2022/06/xe-audi-dep-nhat-4.jpg', 885.0000, N'Audi R8 Green Hell Edition l� phi�n b?n k? ni?m chi?n th?ng t?i gi?i dua 24 Hours N�rburgring', N'Audi R8 Green Hell Edition l� m?u xe ra m?t th? tru?ng nh�n d?p R8 LMS c�n m?c 5 l?n gi�nh chi?n th?ng t?i gi?i dua 24 Hours N�rburgring.

V?i � nghia tr�n, m?u xe Audi d?p nh?t n�y du?c nh� s?n xu?t ch� tr?ng d?c bi?t d?n kh�u thi?t k?. Theo d�, xe s? h?u ngo?i th?t kh� ?n tu?ng, n?i b?t v?i m�u son xanh l� di?m xuy?t l� nh?ng du?ng n�t m�u d? v� den, tuong t? nhu m�u �o xe dua tr�n chi?c Audi R8 LMS huy?n tho?i.

Tuy nhi�n, t�y theo nhu c?u c?a kh�ch h�ng m� nh� s?n xu?t cung c� th? thay d?i m�u son cho xe v?i nh?ng t�ng m�u nhu tr?ng Ibis White, x�m Daytona Gray v� den Mythos Black. C�c chi ti?t n?i b?t kh�c c?a ngo?i th?t g?m c� b? guong chi?u h?u, c�nh gi� sau, h?c gi� m�u den, m�m xe k�ch thu?c 20 inch v?i m�u d? n?i b?t.
Di chuy?n v�o khoang n?i th?t, m?u xe n�y s? d?ng ch?t li?u da Alcantara cho h?u h?t c�c chi ti?t b�n trong, t? v� lang cho d?n b?ng t�p l� hay ph?n ?p c?a. T� di?m cho c�c chi ti?t n�y l� nh?ng du?ng ch? kh�u m�u xanh lam, t?p trung ? nh?ng v? tr� nhu gh? ng?i hay vi?n c?a v� ph?n v� lang.

�Tr�i tim� c?a xe v?n l� kh?i d?ng co V10 h�t kh� t? nhi�n v?i dung t�ch 5,2 l�t cho kh? nang s?n sinh c�ng su?t 612 m� l?c, m�-men xo?n 550 Nm. Xe c� kh? nang tang t?c 0 � 100km/h trong 3,1 gi�y tru?c khi d?t v?n t?c t?i da kho?ng 331km/h.', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (34, N'Porsche Macan', N'https://xwatch.vn/upload_images/images/2022/12/07/Xe-Porsche-Macan.jpg', 650.0000, N'Porsche Macan', N'Porsche Macan du?c ra d?i v�o nam 2014 v� du?c s?n xu?t, l?p r�p t?i �?c. Macan l� m?t trong nh?ng d�ng xe SUV du?c ngu?i ti�u d�ng d�n nh?n n?ng nhi?t, d�ng xe Porsche Macan mang d?m n�t h?m h?, to l?n c?a c�c d�ng xe SUV nhung l?i v� c�ng m?m m?i nh? s? h?u c�c g�c c?nh bo tr�n tinh t?. Uu di?m c?a thi?t k? xe Porsche Macan l� n?i th?t cao c?p, nhi?u trang b?, tr?i nghi?m cabin gi?ng xe th? thao g?m th?p di k�m d?ng co m?nh m?, c?m gi�c l�i c?c k? ch�n th?t. ', 4, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (35, N'Porsche Panamera', N'https://xwatch.vn/upload_images/images/2022/12/07/Xe-Porsche-Panamera.jpg', 680.0000, N'Xe Porsche Panamera', N'Ra m?t c�ng ch�ng l?n d?u ti�n v�o th�ng 3/2009 t?i Tri?n l�m � t� Thu?ng H?i, Trung Qu?c, Porsche Panamera khi?n nhi?u ngu?i theo ch? nghia Porsche thu?n t�y nghi ng?i gi?ng nhu d� t?ng x?y ra v?i chi?c SUV Cayenne (ra m?t 2002). 

Hu?ng d?n phong c�ch c?a m?t chi?c sedan th? thao h?ng sang c? l?n, Panamera c� ngo?i h�nh tuong d?i l?n v?i mui xe v� du�i xe du?c k�o d�i, c� thi?t k? tuong t? gi?ng m?t chi?c 911 d� k�o d�i. B�n trong n?i th?t ch� tr?ng ti?n nghi di k�m c�c c�ng ngh? hi?n d?i mang t?i nh?ng tr?i nghi?m �d�ng d?ng ti?n b�t g?o�.', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (36, N'Porsche 911 GT3', N'https://xwatch.vn/upload_images/images/2022/12/07/Xe-Porsche-911-GT3.jpg', 700.0000, N'Xe Porsche 911 GT3', N'Mang s? m?nh l� b� ch? th? tru?ng xe dua, Porsche 911 GT3 du?c trang b? d?ng co g?m 503 m� l?c v� 496 m�-men xo?n ch�nh cung c?p nang lu?ng m?nh m?, d?t t?c d? �kh?ng� m� hi?m c� h�ng xe n�o b?t k?p. M?c d� c?c �hot� nhung d? s? h?u m?t chi?c xe thu?c d�ng n�y, b?n ph?i b? ra m?t s? ti?n hon 12 t? v� c�ng d?t d? so v?i thu nh?p chung c?a ngu?i d�n Vi?t Nam n�n r?t kh� ti?p c?n. ', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (37, N'Porsche 718 Cayman', N'https://hips.hearstapps.com/hmg-prod/images/718-style-edition-18-1667334774.jpg?crop=0.599xw:0.450xh;0.249xw,0.203xh&resize=1200:*', 650.0000, N'Xe Porsche 718 Cayman', N'L� d�ng xe th? thao couple hai c?a v?i hai ch? ng?i m?i du?c d?nh danh l?i t? nam 2016 c?a Porsche. C�ch d?t t�n Porsche 718 Cayman du?c l?y c?m h?ng t? d�ng xe th? thao 718 ra d?i v�o nam 1957. �? tang s? n?i b?t tru?c d�m d�ng, c�c tay choi th? thi?t thu?ng k?t h?p xe 718 Cayman v?i nh?ng m�n ph? ki?n Porsche design nhu th?i trang, k�nh m�t,... d?u l� nh?ng m�n d? thi?t th?c, ph� h?p cho vi?c l�i xe dua t?c d? cao. ', 4, 1)
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
