USE [PRJ321E5_PROJECT]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/26/2021 5:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[contents] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Contact_1] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 10/26/2021 5:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[message] [nvarchar](2000) NOT NULL,
	[createAt] [date] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LaptopInfo]    Script Date: 10/26/2021 5:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LaptopInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CPU] [varchar](250) NULL,
	[RAM] [varchar](250) NULL,
	[Screen] [varchar](250) NULL,
	[Graphic] [varchar](250) NULL,
	[HardDrive] [varchar](250) NULL,
	[Weigh] [varchar](250) NULL,
	[Origin] [varchar](250) NULL,
	[DebutYear] [int] NULL,
 CONSTRAINT [PK_LaptopInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/26/2021 5:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderQuantity] [int] NOT NULL,
	[OrderTotalPrice] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 10/26/2021 5:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Image] [varchar](200) NULL,
	[Content] [nvarchar](2000) NULL,
	[publicAt] [date] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/26/2021 5:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductPrice] [int] NOT NULL,
	[ProductImage] [nvarchar](50) NOT NULL,
	[CreatedDate] [date] NULL,
	[UpdatedDate] [date] NULL,
	[LaptopInfoID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/26/2021 5:08:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[gender] [bit] NULL,
	[address] [nvarchar](1000) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([name], [email], [phone], [contents]) VALUES (N'abc', N'abc@gmail.com', N'0987654321', N'I love your cake')
INSERT [dbo].[Contact] ([name], [email], [phone], [contents]) VALUES (N'dsa', N'eqwewq', N'0549355453', N'grcscsdcsdc')
INSERT [dbo].[Contact] ([name], [email], [phone], [contents]) VALUES (N'long', N'long@gmail.com', N'0549355453', N'jdsads')
INSERT [dbo].[Contact] ([name], [email], [phone], [contents]) VALUES (N'Ã¡dasdsds', N'nguyen23012000@gmail.com', N'0342300469', N'dáº¥dasdsds')
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID], [username], [message], [createAt]) VALUES (1, N'long2', N'Dep trai sieu cap', CAST(N'2021-10-24' AS Date))
INSERT [dbo].[Feedback] ([ID], [username], [message], [createAt]) VALUES (3, N'admin', N'Siêu chuyên nghiệp!', CAST(N'2021-10-24' AS Date))
INSERT [dbo].[Feedback] ([ID], [username], [message], [createAt]) VALUES (5, N'admin', N'Đội ngũ admin chất lượng!', CAST(N'2021-10-24' AS Date))
INSERT [dbo].[Feedback] ([ID], [username], [message], [createAt]) VALUES (10, N'admin', N'I love u', CAST(N'2021-10-24' AS Date))
INSERT [dbo].[Feedback] ([ID], [username], [message], [createAt]) VALUES (11, N'jack', N'5 triệu 1 tháng', CAST(N'2021-10-24' AS Date))
INSERT [dbo].[Feedback] ([ID], [username], [message], [createAt]) VALUES (12, N'jack', N'Sóng gió, Hồng Nhan', CAST(N'2021-10-24' AS Date))
INSERT [dbo].[Feedback] ([ID], [username], [message], [createAt]) VALUES (13, N'jack', N'Hồng trần trên đôi cánh tay, hại đời em trong phút giây :v', CAST(N'2021-10-24' AS Date))
INSERT [dbo].[Feedback] ([ID], [username], [message], [createAt]) VALUES (14, N'long2', N'Hello ae', CAST(N'2021-10-24' AS Date))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[LaptopInfo] ON 

INSERT [dbo].[LaptopInfo] ([ID], [CPU], [RAM], [Screen], [Graphic], [HardDrive], [Weigh], [Origin], [DebutYear]) VALUES (1, N'Intel Core i5-11400H', N'8 GB, DDR4, 3200 MHz', N'15.6, 1920 x 1080 pixel, IPS, 144Hz', N'NVIDIA GeForce RTX 3050 4GB', N'SSD 512GB', N'2.2 KG', N'China', 2021)
SET IDENTITY_INSERT [dbo].[LaptopInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (10, 1, 300000, 3, N'nguyen')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (11, 1, 300000, 6, N'nguyen')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (12, 10, 3000000, 3, N'nguyen')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (13, 1, 33000000, 3, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (14, 1, 31200000, 2, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (15, 2, 66000000, 3, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (16, 2, 66000000, 3, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (17, 2, 66000000, 3, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (18, 2, 66000000, 3, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (19, 2, 66000000, 3, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (20, 2, 66000000, 3, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (21, 1, 30990000, 8, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (24, 1, 33000000, 3, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (25, 1, 33000000, 3, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (26, 1, 33000000, 3, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (27, 1, 31200000, 2, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (28, 1, 33000000, 3, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (29, 3, 135000000, 7, N'hello')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (30, 1, 42000000, 12, N'j97')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (33, 1, 21500000, 11, N'long2')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (34, 1, 21500000, 11, N'jack')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (35, 2, 86000000, 11, N'jack')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (36, 3, 193500000, 11, N'jack')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (37, 3, 193500000, 11, N'jack')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (38, 3, 193500000, 11, N'jack')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (39, 4, 1104000000, 12, N'jack')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (40, 1, 21500000, 11, N'jack')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (41, 5, 537500000, 11, N'jack')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (42, 5, 500000000, 9, N'jack')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (43, 1, 21500000, 11, N'jack')
INSERT [dbo].[Order] ([OrderID], [OrderQuantity], [OrderTotalPrice], [ProductID], [username]) VALUES (44, 3, 621000000, 12, N'long2')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([ID], [Title], [Image], [Content], [publicAt]) VALUES (5, N'Ngày Tuyệt Vời Laptop', N'P1.jpg', N'Ngày tuyệt vời để mua cho mình một em laptop', CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Post] ([ID], [Title], [Image], [Content], [publicAt]) VALUES (7, N'Ngày Tuyệt Vời Laptop', N'P2.jpg', N'Ngày tuyệt vời để mua cho mình một em laptop', CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Post] ([ID], [Title], [Image], [Content], [publicAt]) VALUES (8, N'Ngày Tuyệt Vời Laptop', N'P3.jpg', N'Ngày tuyệt vời để mua cho mình một em laptop', CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Post] ([ID], [Title], [Image], [Content], [publicAt]) VALUES (9, N'Ngày Tuyệt Vời Laptop', N'P1.jpg', N'Ngày tuyệt vời để mua cho mình một em laptop', CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Post] ([ID], [Title], [Image], [Content], [publicAt]) VALUES (10, N'Ngày Tuyệt Vời Laptop', N'P2.jpg', N'Ngày tuyệt vời để mua cho mình một em laptop', CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Post] ([ID], [Title], [Image], [Content], [publicAt]) VALUES (11, N'Con milu', N'P3.jpg', N'Ngày tuyệt vời để mua cho mình một em laptop', CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Post] ([ID], [Title], [Image], [Content], [publicAt]) VALUES (12, N'Quá là chán luôn', N'P1.jpg', N'Ngày tuyệt vời để mua cho mình một em laptop', CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Post] ([ID], [Title], [Image], [Content], [publicAt]) VALUES (13, N'Ngày buồn rười rượi', N'P2.jpg', N'Ngày tuyệt vời để mua cho mình một em laptop', CAST(N'2021-10-25' AS Date))
INSERT [dbo].[Post] ([ID], [Title], [Image], [Content], [publicAt]) VALUES (14, N'Có con mèo', N'P3.jpg', N'Con mèo mà trèo cây cau hỏi thăm chú chuột đi đâu vắng nhà', CAST(N'2021-10-25' AS Date))
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage], [CreatedDate], [UpdatedDate], [LaptopInfoID]) VALUES (2, N'Laptop dell pro', 31200000, N'L1.jpg', CAST(N'2020-10-10' AS Date), CAST(N'2020-10-10' AS Date), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage], [CreatedDate], [UpdatedDate], [LaptopInfoID]) VALUES (3, N'Laptop MSI Aspire 3', 33000000, N'L2.jpg', CAST(N'2020-10-10' AS Date), CAST(N'2020-10-10' AS Date), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage], [CreatedDate], [UpdatedDate], [LaptopInfoID]) VALUES (5, N'MacBook Air 13', 28000000, N'L3.jpg', CAST(N'2020-10-11' AS Date), CAST(N'2020-10-11' AS Date), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage], [CreatedDate], [UpdatedDate], [LaptopInfoID]) VALUES (6, N'Laptop Fujitsu', 25990000, N'L4.jpg', CAST(N'2020-10-11' AS Date), CAST(N'2020-10-11' AS Date), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage], [CreatedDate], [UpdatedDate], [LaptopInfoID]) VALUES (7, N'Laptop Gigabyte Gaming', 45000000, N'L5.jpg', CAST(N'2020-10-13' AS Date), CAST(N'2020-10-13' AS Date), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage], [CreatedDate], [UpdatedDate], [LaptopInfoID]) VALUES (8, N'Laptop Lenovo Gaming 3', 30990000, N'L7.jpg', CAST(N'2020-10-13' AS Date), CAST(N'2020-10-13' AS Date), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage], [CreatedDate], [UpdatedDate], [LaptopInfoID]) VALUES (9, N'Laptop Acer Nitro Gaming', 20000000, N'L8.jpg', CAST(N'2020-10-14' AS Date), CAST(N'2020-10-14' AS Date), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage], [CreatedDate], [UpdatedDate], [LaptopInfoID]) VALUES (11, N'Laptop Asus Zenbook', 21500000, N'L8.jpg', CAST(N'2020-10-15' AS Date), CAST(N'2020-10-15' AS Date), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage], [CreatedDate], [UpdatedDate], [LaptopInfoID]) VALUES (12, N'Laptop Dell Gaming 2', 69000000, N'L8.jpg', CAST(N'2020-10-16' AS Date), CAST(N'2020-10-16' AS Date), 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductPrice], [ProductImage], [CreatedDate], [UpdatedDate], [LaptopInfoID]) VALUES (16, N'Long Gaming 33', 22000000, N'L7.jpg', CAST(N'2021-10-25' AS Date), CAST(N'2021-10-25' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[User] ([username], [password], [email], [phone], [gender], [address]) VALUES (N'admin', N'admin', N'admin@gmail.com', N'0987654321', 1, N'Thái Nguyên')
INSERT [dbo].[User] ([username], [password], [email], [phone], [gender], [address]) VALUES (N'hello', N'1234', N'fudsads@gmail.com', N'0137214332', 0, N'Đà Nẵng')
INSERT [dbo].[User] ([username], [password], [email], [phone], [gender], [address]) VALUES (N'j97', N'123', N'j97@gmail.com', N'0859858526', 0, N'Vũng Tàu')
INSERT [dbo].[User] ([username], [password], [email], [phone], [gender], [address]) VALUES (N'jack', N'123', N'jack@gmail.com', N'0569359636', 1, N'Hà Nội')
INSERT [dbo].[User] ([username], [password], [email], [phone], [gender], [address]) VALUES (N'long2', N'123', N'fsfsdf@gmail.com', N'0843423432', 0, N'Lạng Sơn')
INSERT [dbo].[User] ([username], [password], [email], [phone], [gender], [address]) VALUES (N'meo1234', N'123', N'meo1234@gmail.com', N'0145333696', 0, N'Hà Nội')
INSERT [dbo].[User] ([username], [password], [email], [phone], [gender], [address]) VALUES (N'meomeo', N'123', N'meomeo@gmail.com', N'489633654', 0, N'Sơn La')
INSERT [dbo].[User] ([username], [password], [email], [phone], [gender], [address]) VALUES (N'nguyen', N'123456', N'nguyen23012000@gmail.com', N'0342300469', 1, N'Lai Châu')
INSERT [dbo].[User] ([username], [password], [email], [phone], [gender], [address]) VALUES (N'toanmot1', N'123', N'toan@gmail.com', N'0158963563', 0, N'Phú Quốc')
INSERT [dbo].[User] ([username], [password], [email], [phone], [gender], [address]) VALUES (N'trinhtranphuong', N'123', N'asdasd@gmail.com', N'0448556666', 1, N'Sóc Sơn')
INSERT [dbo].[User] ([username], [password], [email], [phone], [gender], [address]) VALUES (N'trinhtranphuongtuan', N'123', N'trinhtranphuongtuan@gmail.com', N'0896387455', 1, N'Đông Anh')
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User1] FOREIGN KEY([username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User1]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_LaptopInfo] FOREIGN KEY([LaptopInfoID])
REFERENCES [dbo].[LaptopInfo] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_LaptopInfo]
GO
