USE [YadodVivuFinal]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[Activity_ID] [int] IDENTITY(1,1) NOT NULL,
	[ActivityName] [nvarchar](100) NULL,
	[Landscape_Address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Activity_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City_ID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[City_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Discount_ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Discount] [int] NULL,
	[Quantity] [int] NULL,
	[DiscountCode] [nchar](10) NULL,
 CONSTRAINT [PK__Discount__6C137224F0D2F822] PRIMARY KEY CLUSTERED 
(
	[Discount_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TourID] [int] NULL,
	[UserID] [int] NULL,
	[Context] [nvarchar](max) NULL,
	[Vote] [int] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Room] [int] NULL,
	[Active] [int] NULL,
	[isDelete] [bit] NULL,
	[IMG] [nvarchar](250) NULL,
	[Description] [nvarchar](4000) NULL,
	[CityID] [int] NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Date] [datetime] NULL,
	[TotalPrice] [money] NULL,
	[Status] [int] NULL,
	[TourID] [int] NULL,
	[People] [int] NULL,
	[StartAddress] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_ID] [int] IDENTITY(1,1) NOT NULL,
	[Role_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nchar](10) NULL,
	[Name] [nvarchar](500) NULL,
	[UserID] [int] NULL,
	[TourID] [int] NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[Tour_ID] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[NumberPeople] [int] NULL,
	[Content] [nvarchar](4000) NULL,
	[IMG] [nvarchar](500) NULL,
	[TotalPrice] [money] NULL,
	[isDelete] [bit] NULL,
	[Type_ID] [int] NULL,
	[HotelID] [int] NULL,
	[TourName] [nvarchar](100) NULL,
 CONSTRAINT [PK__Tour__D436A8635CB93D00] PRIMARY KEY CLUSTERED 
(
	[Tour_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourActivity]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourActivity](
	[Tour_ID] [int] NULL,
	[Activity_ID] [int] NULL,
	[Time] [time](7) NULL,
	[Is Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourDiscount]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourDiscount](
	[Discount_ID] [int] NULL,
	[Tour_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourType]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourType](
	[Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Type_name] [nvarchar](100) NULL,
	[Is_Delete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/23/2023 7:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[cmnd] [varchar](16) NULL,
	[Email] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Phone] [nvarchar](10) NULL,
	[Gender] [bit] NULL,
	[DOB] [date] NULL,
	[Address] [nvarchar](100) NULL,
	[IsBlocked] [bit] NULL,
	[Role_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Activity] ON 

INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1, N'Ăn Sáng', N'Khách sạn MT')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (2, N'Tắm biển', N'Bãi biển Mỹ Khê')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (3, N'Massage', N'Khách sạn MT')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (4, N'Dạo chơi ở chợ đêm', N'Đà Lạt')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (5, N'Thăm quan thành phố cổ', N'Hội An')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1003, N'Trải nghiệm văn hóa sắc màu', N'Sapa')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1004, N'Lặn biển', N'Đảo Cù Lao Chàm')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1005, N'Trải nghiệm văn hóa đồng bằng sông Cửu Long', N'Cần Thơ')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1006, N'Khám phá cung đường Hồ Chí Minh ', N'Tây Nguyên')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1007, N' Ghé thăm ngôi đền UNESCO', N'My Son')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1008, N'Ghé thăm di tích quốc gia', N'Hà Nội')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1009, N'Dạo chơi ở chợ đêm', N'Đà Lạt')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1010, N'Tắm suối và thưởng thức nước mắm', N'Phú Quốc')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1011, N'Tham quan thành cổ ', N'Huế')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1012, N'Trải nghiệm cuộc sống trên sông Mekong', N'Đồng Tháp Mười')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1013, N'Khám phá di sản quốc gia', N'Vịnh Hạ Long')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1014, N'Ghé thăm ngôi chùa cổ', N'Chùa Một Cột Hà Nội')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1015, N'Trải nghiệm đua thuyền cổ truyền', N'Huế')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1016, N'Thưởng thức ẩm thực đường phố ', N'Hồ Chí Minh')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1017, N'Ghé thăm vườn quốc gia', N' Phong Nha-Kẻ Bàng')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1018, N'Tham quan thị trấn biển', N'Mũi Né, Phan Thiết')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1019, N'Trải nghiệm văn hóa sông nước', N' Cái Răng, Cần Thơ')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1020, N'Thăm ngôi chùa lớn nhất Đông Nam Á', N'Chùa Bái Đính, Ninh Bình')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1021, N'Ghé thăm di tích quốc gia', N'Chùa Một Cột Hà Nội')
INSERT [dbo].[Activity] ([Activity_ID], [ActivityName], [Landscape_Address]) VALUES (1022, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Activity] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (1, N'An Giang')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (2, N'Vũng Tàu')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (3, N'Bạc Liêu')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (4, N'Bắc Giang')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (5, N'Bắc Kạn')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (6, N'Bắc Ninh')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (7, N'Bến Tre')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (8, N'Bình Dương')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (9, N'Bình Định')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (10, N'Bình Phước')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (11, N'Bình Thuận')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (12, N'Cà Mau')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (13, N'Cao Bằng')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (14, N'Cần Thơ')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (15, N'Đà Nẵng')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (16, N'Đắk Lắk')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (17, N'Đắk Nông')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (18, N'Điện Biên')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (19, N'Đồng Nai')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (20, N'Đồng Tháp')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (21, N'Gia Lai')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (22, N'Hà Giang')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (23, N'Hà Nam')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (24, N'Hà Nội')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (25, N'Hà Tĩnh')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (26, N'Hải Dương')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (27, N'Hải Phòng')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (28, N'Hậu Giang')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (29, N'Hòa Bình')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (30, N'Hồ Chí Minh city')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (31, N'Hưng Yên')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (32, N'Khánh Hòa')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (33, N'Kiên Giang')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (34, N'Kon Tum')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (35, N'Lai Châu')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (36, N'Lạng Sơn')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (37, N'Lào Cai')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (38, N'Lâm Đồng')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (39, N'Long An')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (40, N'Nam Định')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (41, N'Nghệ An')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (42, N'Ninh Bình')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (43, N'Ninh Thuận')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (44, N'Phú Thọ')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (45, N'Phú Yên')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (46, N'Quảng Bình')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (47, N'Quảng Nam')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (48, N'Quảng Ngãi')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (49, N'Quảng Ninh')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (50, N'Quảng Trị')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (51, N'Sóc Trăng')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (52, N'Sơn La')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (53, N'Tây Ninh')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (54, N'Thái Bình')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (55, N'Thái Nguyên')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (56, N'Thanh Hóa')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (57, N'Huế')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (58, N'Tiền Giang')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (59, N'Trà Vinh')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (60, N'Tuyên Quang')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (61, N'Vĩnh Long')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (62, N'Vĩnh Phúc')
INSERT [dbo].[City] ([City_ID], [CityName]) VALUES (63, N'Yên Bái')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Discount] ON 

INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (1, N'Tuần lễ Thiếu Nhi', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-07T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (2, N'Tuần lễ Quốc Khánh', CAST(N'2023-09-02T00:00:00.000' AS DateTime), CAST(N'2023-09-08T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (3, N'Tuần lễ Phục Sinh', CAST(N'2023-04-15T00:00:00.000' AS DateTime), CAST(N'2023-04-21T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (4, N'Tuần lễ Lao Động', CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2023-05-07T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (5, N'Tuần lễ Phật Đản', CAST(N'2023-04-25T00:00:00.000' AS DateTime), CAST(N'2023-05-01T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (6, N'Tuần lễ Năm Mới', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-07T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (7, N'Tuần lễ Giáng Sinh', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-07T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (8, N'Tuần lễ Valentine', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-07T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (9, N'Tuần lễ sinh nhật', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-07T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (10, N'Tuần lễ', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-07T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (11, N'Tuần lễ', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-07T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (12, N'Tuần lễ', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-07T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (13, N'Tuần lễ', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-06-07T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (14, N'LƯU ĐỨC TÙNG', CAST(N'2023-06-08T00:00:00.000' AS DateTime), CAST(N'2023-06-28T00:00:00.000' AS DateTime), 5, 100, N'          ')
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (15, N'LƯU ĐỨC TÙNG', CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2023-12-12T00:00:00.000' AS DateTime), 5, 3, N'AOOABGHTFG')
INSERT [dbo].[Discount] ([Discount_ID], [Description], [StartDate], [EndDate], [Discount], [Quantity], [DiscountCode]) VALUES (16, N'THANH NIÊN', CAST(N'2023-05-30T00:00:00.000' AS DateTime), CAST(N'2024-06-16T00:00:00.000' AS DateTime), 5, 10, N'VTIGDS2O2K')
SET IDENTITY_INSERT [dbo].[Discount] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID], [TourID], [UserID], [Context], [Vote]) VALUES (1, 1, 1, N'Hay qua', 5)
INSERT [dbo].[Feedback] ([ID], [TourID], [UserID], [Context], [Vote]) VALUES (2, 1, 2, N'OK', 5)
INSERT [dbo].[Feedback] ([ID], [TourID], [UserID], [Context], [Vote]) VALUES (3, 1, 1, N'OK', 5)
INSERT [dbo].[Feedback] ([ID], [TourID], [UserID], [Context], [Vote]) VALUES (4, 1, 1, N'dwqdwq', 4)
INSERT [dbo].[Feedback] ([ID], [TourID], [UserID], [Context], [Vote]) VALUES (5, 1, 1, N'OK', 5)
INSERT [dbo].[Feedback] ([ID], [TourID], [UserID], [Context], [Vote]) VALUES (6, 1, 1, N'OK', 5)
INSERT [dbo].[Feedback] ([ID], [TourID], [UserID], [Context], [Vote]) VALUES (7, 1032, 1, N'3', 5)
INSERT [dbo].[Feedback] ([ID], [TourID], [UserID], [Context], [Vote]) VALUES (8, 2, 1, N'1', 5)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotel] ON 

INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (1, N'Fusion Maia Resort', 100, 20, 0, N'https://cf.bstatic.com/xdata/images/hotel/max500/302376194.jpg?k=f6265012295c044c8161a0ca3a5077e00a6878a883ae4c992fcf36bc8261e4f0&o=&hp=1', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 1)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (2, N'Sofitel Legend Metropole', 100, 10, 0, N'https://khachsandanang.shop/uploads/images/images/fusion-maia.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 2)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (5, N'InterContinental Hanoi Westlake', 142, 42, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 4)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (6, N'Hotel Majestic Saigon', 156, 64, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 2)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (7, N'Park Hyatt Saigon', 234, 43, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 5)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (8, N'The Reverie Saigon', 123, 42, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 7)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (9, N'Caravelle Saigon', 112, 43, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 4)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (10, N'Sheraton Hanoi Hotel', 142, 42, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 1)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (11, N'JW Marriott Hotel Hanoi', 142, 23, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 2)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (12, N'Vinpearl Luxury Da Nang', 142, 53, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 6)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (13, N'Furama Resort Danang', 125, 42, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 3)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (14, N'Six Senses Con Dao', 125, 63, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 7)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (15, N'Amanoi Resort', 142, 42, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 8)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (16, N'Fusion Maia Da Nang', 152, 34, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 4)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (17, N'Anantara Hoi An Resort ', 142, 42, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 2)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (18, N'Victoria Hoi An Beach Resort & Spa', 142, 32, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 7)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (19, N'La Residence Hotel & Spa', 164, 64, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 2)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (20, N'Banyan Tree Lang Co', 135, 87, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 11)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (21, N'Salinda Resort Phu Quoc Island', 185, 65, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 2)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (22, N'The Anam', 142, 43, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 55)
INSERT [dbo].[Hotel] ([ID], [Name], [Room], [Active], [isDelete], [IMG], [Description], [CityID]) VALUES (23, N'An Lam Retreats Ninh Van Bay', 142, 42, 0, N'https://www.sofitel-legend-metropole-hanoi.com/wp-content/uploads/sites/95/2022/06/DSC00934-scaled.jpg', N'Sofitel Legend Metropole Hanoi là một khách sạn danh tiếng tọa lạc tại trung tâm thành phố Hà Nội, Việt Nam. Khách sạn này có lịch sử lâu đời và được biết đến như một biểu tượng văn hóa và kiến trúc của Hà Nội.

Với kiến trúc hoàng gia và phong cách cổ điển Pháp, Sofitel Legend Metropole Hanoi mang đến một không gian sang trọng và lịch lãm. Khách sạn có tổng cộng 364 phòng và suite, được thiết kế tinh tế và trang trọng với các tiện nghi hiện đại.

Khách sạn cung cấp nhiều tiện ích cho du khách bao gồm các nhà hàng và quầy bar đa dạng. Trong đó, nhà hàng Le Beaulieu nổi tiếng với các món ăn Pháp tuyệt vời, còn nhà hàng Spices Garden phục vụ các món ăn truyền thống Việt Nam. Quầy bar ngắm cảnh thuộc sở hữu của khách sạn là một điểm đến lý tưởng để thưởng thức đồ uống và ngắm cảnh.

Ngoài ra, khách sạn còn có bể bơi ngoài trời, trung tâm thể dục và spa để khách thư giãn và thưởng thức dịch vụ chăm sóc sức khỏe.', 2)
SET IDENTITY_INSERT [dbo].[Hotel] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People], [StartAddress], [StartDate]) VALUES (1087, 1, CAST(N'2023-06-14T00:00:00.000' AS DateTime), 1500000.0000, 1, 12, 1, NULL, CAST(N'2023-06-14' AS Date))
INSERT [dbo].[Order] ([Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People], [StartAddress], [StartDate]) VALUES (1092, 9, CAST(N'2023-06-14T00:00:00.000' AS DateTime), 6650.8193, 1, 2, 7, N'Hay Tayy', CAST(N'2023-06-14' AS Date))
INSERT [dbo].[Order] ([Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People], [StartAddress], [StartDate]) VALUES (1093, 1, CAST(N'2023-06-14T00:00:00.000' AS DateTime), 8551.0534, 0, 2, 9, N'Ha Noi 1', CAST(N'2023-06-14' AS Date))
INSERT [dbo].[Order] ([Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People], [StartAddress], [StartDate]) VALUES (1094, 1, CAST(N'2023-06-14T00:00:00.000' AS DateTime), 10201.2566, 0, 2, 12, N'Ha Noi 1', CAST(N'2023-06-14' AS Date))
INSERT [dbo].[Order] ([Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People], [StartAddress], [StartDate]) VALUES (1095, 1, CAST(N'2023-06-17T00:00:00.000' AS DateTime), 9350.0000, 0, 1, 11, N'Ha Noi', CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Order] ([Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People], [StartAddress], [StartDate]) VALUES (1096, 1, CAST(N'2023-06-19T00:00:00.000' AS DateTime), 2850.0000, 0, 1, 3, N'Ha Noi', CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Order] ([Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People], [StartAddress], [StartDate]) VALUES (1102, 1, CAST(N'2023-06-21T00:00:00.000' AS DateTime), 1000000.0000, 0, 4, 1, N'Ha Noi', CAST(N'2023-06-21' AS Date))
INSERT [dbo].[Order] ([Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People], [StartAddress], [StartDate]) VALUES (1105, 1, CAST(N'2023-06-21T00:00:00.000' AS DateTime), 4750000.0000, 0, 4, 5, N'Ha Noi', CAST(N'2023-06-30' AS Date))
INSERT [dbo].[Order] ([Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People], [StartAddress], [StartDate]) VALUES (1106, 1, CAST(N'2023-06-21T00:00:00.000' AS DateTime), 8550.0000, 0, 1, 9, N'Ha Noi', CAST(N'2023-06-21' AS Date))
INSERT [dbo].[Order] ([Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People], [StartAddress], [StartDate]) VALUES (1107, 1, CAST(N'2023-06-21T00:00:00.000' AS DateTime), 11050.0000, 0, 1, 13, N'Ha Noi', CAST(N'2023-07-05' AS Date))
INSERT [dbo].[Order] ([Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People], [StartAddress], [StartDate]) VALUES (1109, 1, CAST(N'2023-06-21T00:00:00.000' AS DateTime), 5700.0000, 0, 1, 6, N'Ha Noi', CAST(N'2023-06-21' AS Date))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Role_ID], [Role_name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([Role_ID], [Role_name]) VALUES (2, N'staff')
INSERT [dbo].[Role] ([Role_ID], [Role_name]) VALUES (3, N'customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket] ON 

INSERT [dbo].[Ticket] ([ID], [Code], [Name], [UserID], [TourID]) VALUES (3, N'dưq       ', N'Ticket', 1, 1)
INSERT [dbo].[Ticket] ([ID], [Code], [Name], [UserID], [TourID]) VALUES (10, N'9QZORGP39 ', N'dqiowmoi', 1, 12)
INSERT [dbo].[Ticket] ([ID], [Code], [Name], [UserID], [TourID]) VALUES (11, N'US9QTL6P4 ', N'Du Lịch ', 9, 2)
INSERT [dbo].[Ticket] ([ID], [Code], [Name], [UserID], [TourID]) VALUES (12, N'dưq       ', N'Ticket', 1, 1)
SET IDENTITY_INSERT [dbo].[Ticket] OFF
GO
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1, CAST(N'2023-10-25' AS Date), CAST(N'2023-12-12' AS Date), 30, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://znews-photo.zingcdn.me/w660/Uploaded/jaroin/2017_10_29/23DQTChon_bong_lai__Ba_na_hill.jpg', 1000.0000, 0, 3, 10, N'Du Lịch XYZ')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (2, CAST(N'2023-01-01' AS Date), CAST(N'2023-02-01' AS Date), 20, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://leadtravel.com.vn/cam-nang-du-lich/wp-content/uploads/2021/03/dia-diem-du-lich-noi-tieng-o-ha-noi-300x164@2x.jpg', 1000.1232, 1, 2, 2, N'Du Lịch ')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (3, CAST(N'2023-06-09' AS Date), CAST(N'2023-06-09' AS Date), 100, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://top10angiang.vn/wp-content/uploads/2021/06/danh-lam-thang-canh-an-giang-3.jpg', 1000000.0000, 1, 1, 5, N'ewqe')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (4, CAST(N'2023-06-09' AS Date), CAST(N'2023-06-09' AS Date), 50, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://hatinhtoplist.vn/wp-content/uploads/2022/10/Danh-lam-thang-canh-tai-Ha-Tinh-2.jpg', 1000000.0000, 1, 1, 6, N'hgndq')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (9, CAST(N'2023-06-10' AS Date), CAST(N'2023-09-10' AS Date), 12, N'23232323232', N'https://cdn3.dhht.vn/wp-content/uploads/2021/07/1-15-danh-lam-thang-canh-viet-nam-noi-tieng-nhat-tren-the-gioi.jpg', 123.0000, 1, 1, 7, N'dqownnfas')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (12, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 7, N'Pho co Hoi An xinh dep ngat long nguoi', N'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/08/hoi-an-quang-nam-vntrip-1.jpg', 1500000.0000, 0, 3, 6, N'dqiowmoi')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1013, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 24, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://i.ex-cdn.com/vntravellive.com/files/news/2022/05/04/binh-thuan-dang-cai-nam-du-lich-quoc-gia-2023-105147.jpg', 1800000.0000, 0, 1, 8, N'ionqwodn')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1014, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 24, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://media.baoquangninh.vn/dataimages/201809/original/images1098138_vinh_ha_long.jpg', 1900000.0000, 0, 2, 9, N'tủioufrw')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1015, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 24, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://cdn3.dhht.vn/wp-content/uploads/2021/07/anh-bia-15-danh-lam-thang-canh-viet-nam-noi-tieng-nhat-tren-the-gioi.jpg', 1600000.0000, 0, 1, 11, N'dưnquono')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1016, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 24, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh66S3jp4jYIx5ok-5QtgctPUc5v0vxip2S7VJEE8s2hjoyqC9wr6nR-Hail_h4KB-Z0c&usqp=CAU', 2400000.0000, 0, 2, 2, N'dưquono')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1017, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 30, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGxzynfAVV8YKR8AEag09bG_KPdx4DlWpp4JcKz1rZHtDdIAlJnSEZ8As_NKdSfiP6Tq8&usqp=CAU', 700000.0000, 0, 3, 14, N'duoqwndo')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1018, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 26, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://mcdn.coolmate.me/uploads/January2022/danh-lam-thang-canh-Viet-nam-2.jpg', 1200000.0000, 0, 1, 13, N'nuodonqwo')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1019, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 24, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://media.baoquangninh.vn/dataimages/201809/original/images1098139_top_7.jpg', 2700000.0000, 0, 3, 16, N'dnuouqwn')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1020, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 12, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://ebooks.edu.vn/wp-content/uploads/2019/06/33e0698fa2c94b9712d8.jpg', 1100000.0000, 0, 2, 17, N'nduoqowndot')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1021, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 34, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://fridayshopping.vn/wp-content/uploads/2021/11/30-danh-lam-thang-canh-viet-nam-phai-thu-mot-lan-trong-doi-2.jpg', 2500000.0000, 0, 1, 21, N'qehqwe')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1022, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 26, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://cdn.vuanem.com/blog/wp-content/uploads/2022/03/cac-danh-lam-thang-canh-o-viet-nam.jpg', 2900000.0000, 0, 3, 19, N'tehteow')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1023, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 27, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://media2.gody.vn/public/mytravelmap/images/2018/12/18/bintruong22228605/5cebf820a1c6930639da1aa1ae6eb4c3.jpg', 1100000.0000, 0, 3, 20, N'ugando')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1024, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 28, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://cdn.lawnet.vn/uploads/tintuc/2023/01/16/danh-lam-thang-canh.jpg', 800000.0000, 0, 1, 21, N'utqqinwdi')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1025, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 23, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://cdn3.dhht.vn/wp-content/uploads/2021/07/3-15-danh-lam-thang-canh-viet-nam-noi-tieng-nhat-tren-the-gioi.jpg', 900000.0000, 0, 3, 23, N'ưqeh9hqwd')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1026, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 21, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://ladigi.vn/wp-content/uploads/2020/04/co-do-hoa-lu-ninh-binh-15609.jpg', 1700000.0000, 0, 2, 1, N'dh7w9qhdopq')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1027, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 22, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://fridayshopping.vn/wp-content/uploads/2022/02/top-30-danh-lam-thang-canh-ha-noi-dong-khach-nhat-hien-nay-1.jpeg', 1100000.0000, 0, 1, 15, N'''dqw9udhqd')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1028, CAST(N'2023-07-10' AS Date), CAST(N'2023-10-10' AS Date), 24, N'THÔNG TIN TOUR: Vũng Tàu - Ngày Nắng Hạ 2N1Đ

 Đêm 01: CẦN THƠ  – VŨNG TÀU
21h30: Xe và HDV đón đoàn tại điểm hẹn, sau đó khởi hành đến thành phố Vũng Tàu.

 Ngày 01: KHÁM PHÁ THÀNH PHỐ BIỂN - Ăn: S, T, C
Sáng 07h00: Vũng Tàu Quý khách dùng điểm tâm sáng. Sau đó xe và HDV sẽ đưa các bạn tham quan:
img
- Tượng chúa Kitô – là một trong những địa điểm tham quan Vũng Tàu nổi tiếng, không thể thiếu trong hành trình của du khách khi du lịch Vũng Tàu, bởi cảm giác chinh phục đầy thú vị tại phố biển sôi động này. Tại đây quý khách sẽ ngấm được toàn cảnh Thành phố Vũng Tàu.
- Đoàn di chuyển đến thành phố biển Vũng Tàu. Tiếp tục tham quan Chùa Hộ Pháp - Chùa Thích Ca Phật Đài - Là một địa điểm tín ngưỡng nổi tiếng là nới cúng viếng của nhiều phật tử trong ngoài nước, nằm trong một quần thể thánh tích kiến trúc phật giáo đồ sộ quy mô rộng lớn của hệ Phật Giáo nguyên thủy Theravada có nguồn gốc từ Ấn Độ.

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, về khách sạn nhận phòng nghỉ ngơi.
14h30: Quý khách tự do tắm biển và thưởng thức hải sản. tại đây quý khách thoả sức bơi lội bỏ qua sự mệt mỏi thường ngày tận hưởng những cơn gió biển nắng chiều.     

Chiều 17h00: Đoàn ăn tối. tôi quý khách tự do dạo phố biển về đềm thưởng thức hải sản tươi ngon nơi đây.    
img
 Ngày 2: VŨNG TÀU – CẦN THƠ - Ăn: S, T, C
Sáng 06h30: Đoàn dùng điểm tâm sáng, làm thủ tục trả phòng. Sau đó xe sẽ đưa đoàn dạo quanh con đường biển. Đoàn dừng chân đến với:

- Bến du thuyền Marina - Đến đây du khách sẽ được chu du trên những chiếc cano, lướt cùng sóng biển bằng thuyền buồm, tham quan, ngắm cảnh trên sông Dinh, tìm hiểu về cuộc sống của các ngư dân trên bè nổi, tham gia các hoạt động gắn liền với sông nước.(Chi phí đi canon tự túc)     

Trưa 12h00: Đoàn dùng cơm trưa tại nhà hàng, Sau đó xe và HDV đưa quý khách về lại Cần Thơ.
Trên đường về đoàn dừng chân mua sấm hải sản quà tặng lưu niệm thành phố biển.
Đến Long Thành đoàn dừng chân, sau đó về Tiền Giang ăn chiều.     

Chiều 17h30: Đoàn ăn chiều. Kết thúc chương trình xe và HDV Du lịch Thiên Nhiên đưa quý khách về điểm đón ban đầu. HDV chào tạm biệt gửi lời cám ơn đến đoàn và hẹn gặp lại.    
img
Tùy theo điều kiện thực tế mà chương trình tham quan có thể thay đổi cho phù hợp, tuy nhiên tổng số điểm tham quan vẫn đảm bảo đầy đủ.

GIÁ TOUR ĐÃ BAO GỒM:
- Lưu trú: Khách sạn 2 tiêu chuẩn.
- Ăn uống: Ăn sáng: Tô ly.
Ăn chính theo chương trình, phục vụ tại nhà hàng. 
(2 buổi sáng + 4 buổi ăn chính).
- Tham quan: Vé tham quan các điểm du lịch.', N'https://nhuathuanphong.com/wp-content/uploads/2022/09/du-lich-viet-nam.jpg', 1900000.0000, 0, 2, 8, N'dhwq9udqwd')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1029, CAST(N'2023-07-10' AS Date), CAST(N'2023-07-10' AS Date), 24, N'24', N'24', 42.0000, 0, 2, 1, N'123')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1030, CAST(N'2020-07-08' AS Date), CAST(N'2020-07-08' AS Date), 2, N'2', N'2', 2.0000, 1, 2, 2, N'1')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1032, CAST(N'2020-01-02' AS Date), CAST(N'2020-01-02' AS Date), 24, N'3', N'24.00', 24.0000, 1, 2, 1, N'1')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1034, CAST(N'2023-12-12' AS Date), CAST(N'2024-01-12' AS Date), 3, N'sadas', N'eqwdqw', 312321.0000, 0, 2, 1, N'123')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1035, CAST(N'2023-12-12' AS Date), CAST(N'2024-01-12' AS Date), 3, N'dsfsf', N'eqwdqw', 312321.0000, 0, 2, 1, N'123')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1036, CAST(N'2023-12-12' AS Date), CAST(N'2024-01-12' AS Date), 5, N'dgdffdgf', N'qưewqeqweqw', 312321.0000, 0, 2, 1, N'cvcv')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1038, CAST(N'2023-12-12' AS Date), CAST(N'2024-01-12' AS Date), 2, N'dasdasdasda', N'qưewqeqweqw', 312321.0000, 0, 1, 2, N'wewqewqewq')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1039, CAST(N'2023-12-12' AS Date), CAST(N'2024-01-12' AS Date), 3, N'dfsfsdf', N'eqwdqw', 312321.0000, 0, 2, 11, N'123')
INSERT [dbo].[Tour] ([Tour_ID], [StartDate], [EndDate], [NumberPeople], [Content], [IMG], [TotalPrice], [isDelete], [Type_ID], [HotelID], [TourName]) VALUES (1040, CAST(N'2023-12-12' AS Date), CAST(N'2024-01-12' AS Date), 3, N'gdfsgfdhdfggdfgf', N'qưewqeqweqw', 312321.0000, 0, 2, 11, N'123')
SET IDENTITY_INSERT [dbo].[Tour] OFF
GO
INSERT [dbo].[TourActivity] ([Tour_ID], [Activity_ID], [Time], [Is Active]) VALUES (1038, 1, CAST(N'12:00:00' AS Time), NULL)
INSERT [dbo].[TourActivity] ([Tour_ID], [Activity_ID], [Time], [Is Active]) VALUES (1039, 1, CAST(N'12:00:00' AS Time), NULL)
INSERT [dbo].[TourActivity] ([Tour_ID], [Activity_ID], [Time], [Is Active]) VALUES (2, 1, CAST(N'09:00:00' AS Time), 1)
INSERT [dbo].[TourActivity] ([Tour_ID], [Activity_ID], [Time], [Is Active]) VALUES (9, 3, CAST(N'20:32:00' AS Time), 1)
INSERT [dbo].[TourActivity] ([Tour_ID], [Activity_ID], [Time], [Is Active]) VALUES (1040, 1, CAST(N'12:00:00' AS Time), 1)
GO
SET IDENTITY_INSERT [dbo].[TourType] ON 

INSERT [dbo].[TourType] ([Type_ID], [Type_name], [Is_Delete]) VALUES (1, N'Khám phá', 0)
INSERT [dbo].[TourType] ([Type_ID], [Type_name], [Is_Delete]) VALUES (2, N'Nghỉ Dưỡng', 0)
INSERT [dbo].[TourType] ([Type_ID], [Type_name], [Is_Delete]) VALUES (3, N'Trải nghiệm', 0)
SET IDENTITY_INSERT [dbo].[TourType] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [Gender], [DOB], [Address], [IsBlocked], [Role_ID]) VALUES (1, N'Duc Tung', N'0987654321', N'tung@123.com', N'tung', N'1', N'123', 1, CAST(N'2002-12-12' AS Date), N'Ha Noi', 0, 1)
INSERT [dbo].[User] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [Gender], [DOB], [Address], [IsBlocked], [Role_ID]) VALUES (2, N'Tung', N'11111', N'tung', N'tung', N'tungbv123', N'123', 1, NULL, N'HN', 0, 1)
INSERT [dbo].[User] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [Gender], [DOB], [Address], [IsBlocked], [Role_ID]) VALUES (3, N'TUNG', N'111111111', N'Tung@dqw.com', N'tung123', N'123', N'123123123', NULL, NULL, NULL, 0, 3)
INSERT [dbo].[User] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [Gender], [DOB], [Address], [IsBlocked], [Role_ID]) VALUES (4, N'TungLuu Duc', N'1111111111111111', N'tungldhe163421@fpt.edu.vn', N'admin1', N'1111111111111111', N'0972074620', NULL, NULL, NULL, 0, 3)
INSERT [dbo].[User] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [Gender], [DOB], [Address], [IsBlocked], [Role_ID]) VALUES (5, N'TungLuu Duc', N'1111111111111111', N'tungldhe163vn111vn111421@fpt.edu.vn', N'1111111111111111', N'1111111111111111', N'0972074620', NULL, NULL, NULL, 0, 3)
INSERT [dbo].[User] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [Gender], [DOB], [Address], [IsBlocked], [Role_ID]) VALUES (6, N'ductung', N'1111111111111111', N'tungqwe@fmas.com', N'ewqe', N'1111111111111111', N'0987645321', 0, NULL, N'HN', 0, 3)
INSERT [dbo].[User] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [Gender], [DOB], [Address], [IsBlocked], [Role_ID]) VALUES (7, N'anhminh', N'54564546545', N'vandu@gmail.com', N'mina2k', N'14020302', N'0585664112', 0, NULL, N'34 Da Nang', 0, 3)
INSERT [dbo].[User] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [Gender], [DOB], [Address], [IsBlocked], [Role_ID]) VALUES (8, N'anhduc', N'54831216546423', N'ducanh142@gmail.com', N'duanh142', N'12341235', N'0656656566', 0, NULL, N'34 Da Nang', 0, 1)
INSERT [dbo].[User] ([UserID], [FullName], [cmnd], [Email], [UserName], [Password], [Phone], [Gender], [DOB], [Address], [IsBlocked], [Role_ID]) VALUES (9, N'1', N'2', N'1', N'1', N'1', N'2', 1, NULL, N'Hay Tayy', 0, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Tour] ADD  CONSTRAINT [DF__Tour__StartDate__5CD6CB2B]  DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [dbo].[Tour] ADD  CONSTRAINT [DF__Tour__isDelete__5DCAEF64]  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Tour] FOREIGN KEY([TourID])
REFERENCES [dbo].[Tour] ([Tour_ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Tour]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User]
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([City_ID])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_City]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Tour] FOREIGN KEY([TourID])
REFERENCES [dbo].[Tour] ([Tour_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Tour]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Tour] FOREIGN KEY([TourID])
REFERENCES [dbo].[Tour] ([Tour_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Tour]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_User]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_Hotel] FOREIGN KEY([HotelID])
REFERENCES [dbo].[Hotel] ([ID])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_Hotel]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_TourType] FOREIGN KEY([Type_ID])
REFERENCES [dbo].[TourType] ([Type_ID])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_TourType]
GO
ALTER TABLE [dbo].[TourActivity]  WITH CHECK ADD FOREIGN KEY([Activity_ID])
REFERENCES [dbo].[Activity] ([Activity_ID])
GO
ALTER TABLE [dbo].[TourActivity]  WITH CHECK ADD  CONSTRAINT [FK__TourActiv__Tour___6383C8BA] FOREIGN KEY([Tour_ID])
REFERENCES [dbo].[Tour] ([Tour_ID])
GO
ALTER TABLE [dbo].[TourActivity] CHECK CONSTRAINT [FK__TourActiv__Tour___6383C8BA]
GO
ALTER TABLE [dbo].[TourDiscount]  WITH CHECK ADD  CONSTRAINT [FK__TourDisco__Disco__6477ECF3] FOREIGN KEY([Discount_ID])
REFERENCES [dbo].[Discount] ([Discount_ID])
GO
ALTER TABLE [dbo].[TourDiscount] CHECK CONSTRAINT [FK__TourDisco__Disco__6477ECF3]
GO
ALTER TABLE [dbo].[TourDiscount]  WITH CHECK ADD  CONSTRAINT [FK__TourDisco__Tour___656C112C] FOREIGN KEY([Tour_ID])
REFERENCES [dbo].[Tour] ([Tour_ID])
GO
ALTER TABLE [dbo].[TourDiscount] CHECK CONSTRAINT [FK__TourDisco__Tour___656C112C]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Role] ([Role_ID])
GO
