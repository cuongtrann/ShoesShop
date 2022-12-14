USE [master]
GO
/****** Object:  Database [PRJ301_SE1625]    Script Date: 7/20/2022 9:36:03 PM ******/
CREATE DATABASE [PRJ301_SE1625]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_SE1625_project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_SE1625_project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_SE1625_project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_SE1625_project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_SE1625] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_SE1625].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_SE1625] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_SE1625] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_SE1625] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301_SE1625] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_SE1625] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301_SE1625] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_SE1625] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_SE1625] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_SE1625] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_SE1625] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_SE1625] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_SE1625] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301_SE1625', N'ON'
GO
ALTER DATABASE [PRJ301_SE1625] SET QUERY_STORE = OFF
GO
USE [PRJ301_SE1625]
GO
/****** Object:  Table [dbo].[Order_HE160289]    Script Date: 7/20/2022 9:36:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_HE160289](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[userId] [int] NOT NULL,
	[totalmoney] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLine_HE160289]    Script Date: 7/20/2022 9:36:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine_HE160289](
	[orderId] [int] NOT NULL,
	[productDetailId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails_HE160289]    Script Date: 7/20/2022 9:36:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails_HE160289](
	[productDetailId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[size] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[productDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_HE160289]    Script Date: 7/20/2022 9:36:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_HE160289](
	[productId] [int] NOT NULL,
	[productName] [nvarchar](200) NOT NULL,
	[price] [bigint] NOT NULL,
	[brand] [nvarchar](50) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[cost] [bigint] NOT NULL,
	[image] [nvarchar](200) NULL,
 CONSTRAINT [PK_Products_HE160289] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_HE160289]    Script Date: 7/20/2022 9:36:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_HE160289](
	[userId] [int] NOT NULL,
	[userName] [nvarchar](50) NOT NULL,
	[loginName] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[roleId] [int] NOT NULL,
	[address] [nvarchar](200) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order_HE160289] ON 

INSERT [dbo].[Order_HE160289] ([id], [date], [userId], [totalmoney]) VALUES (6, CAST(N'2022-07-10' AS Date), 2, 13250000)
INSERT [dbo].[Order_HE160289] ([id], [date], [userId], [totalmoney]) VALUES (8, CAST(N'2022-07-11' AS Date), 2, 23850000)
INSERT [dbo].[Order_HE160289] ([id], [date], [userId], [totalmoney]) VALUES (7, CAST(N'2022-07-10' AS Date), 13, 4470000)
SET IDENTITY_INSERT [dbo].[Order_HE160289] OFF
GO
INSERT [dbo].[OrderLine_HE160289] ([orderId], [productDetailId], [quantity], [price]) VALUES (6, 8, 3, 2650000)
INSERT [dbo].[OrderLine_HE160289] ([orderId], [productDetailId], [quantity], [price]) VALUES (6, 9, 2, 2650000)
INSERT [dbo].[OrderLine_HE160289] ([orderId], [productDetailId], [quantity], [price]) VALUES (7, 72, 3, 1490000)
INSERT [dbo].[OrderLine_HE160289] ([orderId], [productDetailId], [quantity], [price]) VALUES (8, 12, 9, 2650000)
GO
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (8, 2, 39, 7, N'null')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (9, 2, 40, 8, N'null')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (10, 2, 41, 10, N'null')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (11, 2, 42, 10, N'null')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (12, 2, 43, 1, N'null')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (13, 2, 44, 10, N'null')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (14, 2, 45, 10, N'null')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (15, 3, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (16, 3, 40, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (17, 3, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (18, 3, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (19, 3, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (20, 3, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (21, 3, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (22, 4, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (23, 4, 40, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (24, 4, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (25, 4, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (26, 4, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (27, 4, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (28, 4, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (29, 5, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (30, 5, 40, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (31, 5, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (32, 5, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (33, 5, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (34, 5, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (35, 5, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (36, 6, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (37, 6, 40, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (38, 6, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (39, 6, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (40, 6, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (41, 6, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (42, 6, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (43, 7, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (44, 7, 40, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (45, 7, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (46, 7, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (47, 7, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (48, 7, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (49, 7, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (50, 8, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (51, 8, 40, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (52, 8, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (53, 8, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (54, 8, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (55, 8, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (56, 8, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (57, 9, 39, 10, N'Trở lại “đường đua” một cách mới mẻ và thú vị hơn, Nike phát hành bộ sưu tập giày đá bóng ‘Progress Pack’ giàu ý nghĩa cùng vẻ ngoài tươi sáng. Nike Tiempo Legend 9 Academy MG The Progress - Football Grey/Dark Marine là mẫu giày danh cho sân cỏ tự nhiên 7-11 người. Nằm trong Bộ sưu tập ''The Progress'' sở hữu màu trắng xám chủ đạo kèm các chi tiết màu xanh lam, xanh nhạt, xanh ngọc, vàng, đỏ nổi bật. Cái tên ‘Progress Pack’ mà Nike chọn lần này mang nhiều ý nghĩa thú vị. Ngoài việc hy vọng các cầu thủ sẽ tiến bộ hơn trong các trận đấu sắp tới, Nike còn muốn khẳng định bóng đá và những cầu thủ sẽ luôn trong tiến trình (Work in Progress) không ngừng phát triển và hoàn thiện bản thân trở nên ngày càng tốt hơn. Nếu bạn đang tìm kiếm một mẫu giày bóng đá sân cỏ nhân tạo toàn diện từ thiết kế cho tới các chức năng thì Nike Tiempo Legend 9 chính là mẫu giày dành cho bạn.')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (58, 9, 40, 10, N'Trở lại “đường đua” một cách mới mẻ và thú vị hơn, Nike phát hành bộ sưu tập giày đá bóng ‘Progress Pack’ giàu ý nghĩa cùng vẻ ngoài tươi sáng. Nike Tiempo Legend 9 Academy MG The Progress - Football Grey/Dark Marine là mẫu giày danh cho sân cỏ tự nhiên 7-11 người. Nằm trong Bộ sưu tập ''The Progress'' sở hữu màu trắng xám chủ đạo kèm các chi tiết màu xanh lam, xanh nhạt, xanh ngọc, vàng, đỏ nổi bật. Cái tên ‘Progress Pack’ mà Nike chọn lần này mang nhiều ý nghĩa thú vị. Ngoài việc hy vọng các cầu thủ sẽ tiến bộ hơn trong các trận đấu sắp tới, Nike còn muốn khẳng định bóng đá và những cầu thủ sẽ luôn trong tiến trình (Work in Progress) không ngừng phát triển và hoàn thiện bản thân trở nên ngày càng tốt hơn. Nếu bạn đang tìm kiếm một mẫu giày bóng đá sân cỏ nhân tạo toàn diện từ thiết kế cho tới các chức năng thì Nike Tiempo Legend 9 chính là mẫu giày dành cho bạn.')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (59, 9, 41, 10, N'Trở lại “đường đua” một cách mới mẻ và thú vị hơn, Nike phát hành bộ sưu tập giày đá bóng ‘Progress Pack’ giàu ý nghĩa cùng vẻ ngoài tươi sáng. Nike Tiempo Legend 9 Academy MG The Progress - Football Grey/Dark Marine là mẫu giày danh cho sân cỏ tự nhiên 7-11 người. Nằm trong Bộ sưu tập ''The Progress'' sở hữu màu trắng xám chủ đạo kèm các chi tiết màu xanh lam, xanh nhạt, xanh ngọc, vàng, đỏ nổi bật. Cái tên ‘Progress Pack’ mà Nike chọn lần này mang nhiều ý nghĩa thú vị. Ngoài việc hy vọng các cầu thủ sẽ tiến bộ hơn trong các trận đấu sắp tới, Nike còn muốn khẳng định bóng đá và những cầu thủ sẽ luôn trong tiến trình (Work in Progress) không ngừng phát triển và hoàn thiện bản thân trở nên ngày càng tốt hơn. Nếu bạn đang tìm kiếm một mẫu giày bóng đá sân cỏ nhân tạo toàn diện từ thiết kế cho tới các chức năng thì Nike Tiempo Legend 9 chính là mẫu giày dành cho bạn.')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (60, 9, 42, 10, N'Trở lại “đường đua” một cách mới mẻ và thú vị hơn, Nike phát hành bộ sưu tập giày đá bóng ‘Progress Pack’ giàu ý nghĩa cùng vẻ ngoài tươi sáng. Nike Tiempo Legend 9 Academy MG The Progress - Football Grey/Dark Marine là mẫu giày danh cho sân cỏ tự nhiên 7-11 người. Nằm trong Bộ sưu tập ''The Progress'' sở hữu màu trắng xám chủ đạo kèm các chi tiết màu xanh lam, xanh nhạt, xanh ngọc, vàng, đỏ nổi bật. Cái tên ‘Progress Pack’ mà Nike chọn lần này mang nhiều ý nghĩa thú vị. Ngoài việc hy vọng các cầu thủ sẽ tiến bộ hơn trong các trận đấu sắp tới, Nike còn muốn khẳng định bóng đá và những cầu thủ sẽ luôn trong tiến trình (Work in Progress) không ngừng phát triển và hoàn thiện bản thân trở nên ngày càng tốt hơn. Nếu bạn đang tìm kiếm một mẫu giày bóng đá sân cỏ nhân tạo toàn diện từ thiết kế cho tới các chức năng thì Nike Tiempo Legend 9 chính là mẫu giày dành cho bạn.')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (61, 9, 43, 10, N'Trở lại “đường đua” một cách mới mẻ và thú vị hơn, Nike phát hành bộ sưu tập giày đá bóng ‘Progress Pack’ giàu ý nghĩa cùng vẻ ngoài tươi sáng. Nike Tiempo Legend 9 Academy MG The Progress - Football Grey/Dark Marine là mẫu giày danh cho sân cỏ tự nhiên 7-11 người. Nằm trong Bộ sưu tập ''The Progress'' sở hữu màu trắng xám chủ đạo kèm các chi tiết màu xanh lam, xanh nhạt, xanh ngọc, vàng, đỏ nổi bật. Cái tên ‘Progress Pack’ mà Nike chọn lần này mang nhiều ý nghĩa thú vị. Ngoài việc hy vọng các cầu thủ sẽ tiến bộ hơn trong các trận đấu sắp tới, Nike còn muốn khẳng định bóng đá và những cầu thủ sẽ luôn trong tiến trình (Work in Progress) không ngừng phát triển và hoàn thiện bản thân trở nên ngày càng tốt hơn. Nếu bạn đang tìm kiếm một mẫu giày bóng đá sân cỏ nhân tạo toàn diện từ thiết kế cho tới các chức năng thì Nike Tiempo Legend 9 chính là mẫu giày dành cho bạn.')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (62, 9, 44, 10, N'Trở lại “đường đua” một cách mới mẻ và thú vị hơn, Nike phát hành bộ sưu tập giày đá bóng ‘Progress Pack’ giàu ý nghĩa cùng vẻ ngoài tươi sáng. Nike Tiempo Legend 9 Academy MG The Progress - Football Grey/Dark Marine là mẫu giày danh cho sân cỏ tự nhiên 7-11 người. Nằm trong Bộ sưu tập ''The Progress'' sở hữu màu trắng xám chủ đạo kèm các chi tiết màu xanh lam, xanh nhạt, xanh ngọc, vàng, đỏ nổi bật. Cái tên ‘Progress Pack’ mà Nike chọn lần này mang nhiều ý nghĩa thú vị. Ngoài việc hy vọng các cầu thủ sẽ tiến bộ hơn trong các trận đấu sắp tới, Nike còn muốn khẳng định bóng đá và những cầu thủ sẽ luôn trong tiến trình (Work in Progress) không ngừng phát triển và hoàn thiện bản thân trở nên ngày càng tốt hơn. Nếu bạn đang tìm kiếm một mẫu giày bóng đá sân cỏ nhân tạo toàn diện từ thiết kế cho tới các chức năng thì Nike Tiempo Legend 9 chính là mẫu giày dành cho bạn.')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (63, 9, 45, 10, N'Trở lại “đường đua” một cách mới mẻ và thú vị hơn, Nike phát hành bộ sưu tập giày đá bóng ‘Progress Pack’ giàu ý nghĩa cùng vẻ ngoài tươi sáng. Nike Tiempo Legend 9 Academy MG The Progress - Football Grey/Dark Marine là mẫu giày danh cho sân cỏ tự nhiên 7-11 người. Nằm trong Bộ sưu tập ''The Progress'' sở hữu màu trắng xám chủ đạo kèm các chi tiết màu xanh lam, xanh nhạt, xanh ngọc, vàng, đỏ nổi bật. Cái tên ‘Progress Pack’ mà Nike chọn lần này mang nhiều ý nghĩa thú vị. Ngoài việc hy vọng các cầu thủ sẽ tiến bộ hơn trong các trận đấu sắp tới, Nike còn muốn khẳng định bóng đá và những cầu thủ sẽ luôn trong tiến trình (Work in Progress) không ngừng phát triển và hoàn thiện bản thân trở nên ngày càng tốt hơn. Nếu bạn đang tìm kiếm một mẫu giày bóng đá sân cỏ nhân tạo toàn diện từ thiết kế cho tới các chức năng thì Nike Tiempo Legend 9 chính là mẫu giày dành cho bạn.')
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (64, 10, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (65, 10, 40, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (66, 10, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (67, 10, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (68, 10, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (69, 10, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (70, 10, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (71, 11, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (72, 11, 40, 7, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (73, 11, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (74, 11, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (75, 11, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (76, 11, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (77, 11, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (78, 12, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (79, 12, 40, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (80, 12, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (81, 12, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (82, 12, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (83, 12, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (84, 12, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (85, 13, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (86, 13, 40, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (87, 13, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (88, 13, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (89, 13, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (90, 13, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (91, 13, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (92, 14, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (93, 14, 40, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (94, 14, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (95, 14, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (96, 14, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (97, 14, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (98, 14, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (99, 15, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (100, 15, 40, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (101, 15, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (102, 15, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (103, 15, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (104, 15, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (105, 15, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (106, 16, 39, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (107, 16, 40, 10, NULL)
GO
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (108, 16, 41, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (109, 16, 42, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (110, 16, 43, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (111, 16, 44, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (112, 16, 45, 10, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (113, 17, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (114, 17, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (115, 17, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (116, 17, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (117, 17, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (118, 17, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (119, 17, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (120, 18, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (121, 18, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (122, 18, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (123, 18, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (124, 18, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (125, 18, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (126, 18, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (127, 19, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (128, 19, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (129, 19, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (130, 19, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (131, 19, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (132, 19, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (133, 19, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (134, 20, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (135, 20, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (136, 20, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (137, 20, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (138, 20, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (139, 20, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (140, 20, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (141, 21, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (142, 21, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (143, 21, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (144, 21, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (145, 21, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (146, 21, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (147, 21, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (148, 22, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (149, 22, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (150, 22, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (151, 22, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (152, 22, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (153, 22, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (154, 22, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (155, 23, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (156, 23, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (157, 23, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (158, 23, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (159, 23, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (160, 23, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (161, 23, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (162, 24, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (163, 24, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (164, 24, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (165, 24, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (166, 24, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (167, 24, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (168, 24, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (169, 25, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (170, 25, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (171, 25, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (172, 25, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (173, 25, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (174, 25, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (175, 25, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (176, 26, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (177, 26, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (178, 26, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (179, 26, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (180, 26, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (181, 26, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (182, 26, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (183, 27, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (184, 27, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (185, 27, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (186, 27, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (187, 27, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (188, 27, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (189, 27, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (190, 28, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (191, 28, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (192, 28, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (193, 28, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (194, 28, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (195, 28, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (196, 28, 45, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (197, 29, 39, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (198, 29, 40, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (199, 29, 41, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (200, 29, 42, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (201, 29, 43, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (202, 29, 44, 0, NULL)
INSERT [dbo].[ProductDetails_HE160289] ([productDetailId], [productId], [size], [quantity], [description]) VALUES (203, 29, 45, 0, NULL)
GO
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (1, N'Nike Mercurial Vapor 14 Pro AG-PRO Renew - Black/Iron Grey', 3190000, N'Nike', N'ag', 3000000, N'product1.jpeg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (2, N'Nike Mercurial Zoom Vapor 14 Pro IC Motivation - Volt/Bright Crimson/Black', 2650000, N'Nike', N'ic', 2000000, N'product2.jpeg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (3, N'Nike Mercurial Vapor 14 Pro AG-PRO Motivation - Volt/Bright Crimson/Black', 3190000, N'Nike', N'ag', 3000000, N'product3.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (4, N'Nike Tiempo Legend 9 Pro TF Renew - Black/Iron Grey', 2490000, N'Nike', N'tf', 2000000, N'product4.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (5, N'Nike Mercurial Zoom Vapor 14 Pro IC Renew - Black/Iron Grey', 2590000, N'Nike', N'ic', 2000000, N'pruduct5.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (6, N'Nike Tiempo React Legend 9 Pro TF Shadow - Black/Metallic Dark Grey/Anthracite', 2650000, N'Nike', N'tf', 2000000, N'product6.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (7, N'Nike Phantom GT 2 Academy MG The Progress - Football Grey/Blackened Blue', 1950000, N'Nike', N'mg', 1000000, N'product7.jpeg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (8, N'Nike Phantom GT 2 Academy TF The Progress - Football Grey/Blackened Blue', 1890000, N'Nike', N'tf', 1000000, N'product8.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (9, N'Nike Tiempo Legend 9 Academy MG The Progress - Football Grey/Dark Marine', 1890000, N'Nike', N'mg', 1000000, N'product9.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (10, N'Adidas Predator Edge .3 Low TF Diamond Edge - Footwear White/Hi-Res Blue', 1850000, N'Adidas', N'tf', 1000000, N'product10.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (11, N'Adidas X Speedflow .3 TF Diamond Edge - Footwear White/Legend Ink/Hi-Res Blue Kids', 1490000, N'Adidas', N'tf', 1000000, N'product11.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (12, N'Adidas Top Sala Footwear White/Core Black/Gold Metal', 1950000, N'Adidas', N'ic', 1000000, N'product12.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (13, N'Adidas Copa Sense .3 TF Diamond Edge - Footwear White/Hi-Res Blue/Legend Ink', 1750000, N'Adidas', N'tf', 1000000, N'product13.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (14, N'Adidas X Speedflow .3 FG Diamond Edge - Footwear White/Legend Ink/Hi-Res Blue', 1850000, N'Adidas', N'fg', 1000000, N'product14.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (15, N'Mizuno Morelia Neo III Pro TF Below Zero - White/Ice Melt/Star Sapphire/Neo Lime', 3050000, N'Mizuno', N'tf', 3000000, N'product15.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (16, N'Mizuno Morelia TF - Black/White/Galaxy Silver', 3200000, N'Mizuno', N'tf', 3000000, N'product16.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (17, N'MIZUNO MORELIA NEO III PRO TF PRE-FUTURE - WHITE/REFLEX BLUE/COOL GREY', 3050000, N'Mizuno', N'tf', 3000000, N'product17.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (18, N'Mizuno Morelia Neo III Pro FG Pre-Future - White/Reflex Blue/Cool Grey', 3050000, N'Mizuno', N'fg', 3000000, N'product18.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (19, N'MIZUNO MONARCIDA NEO II SELECT AS FG - Ice Melt/Star Sapphire', 1550000, N'Mizuno', N'fg', 1000000, N'product19.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (20, N'MIZUNO MONARCIDA NEO II SELECT AS TF - RED/WHITE', 1399000, N'Mizuno', N'tf', 1000000, N'product20.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (21, N'MIZUNO MONARCIDA NEO II SELECT AS TF - White/Reflex Blue C', 1399000, N'Mizuno', N'tf', 1000000, N'product21.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (22, N'MIZUNO MONARCIDA NEO II SELECT AS TF SILVER/GOLD', 1299000, N'Mizuno', N'tf', 1000000, N'product22.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (23, N'Mizuno Rebula Cup Select As TF - Blue/Silver', 1550000, N'Mizuno', N'tf', 1000000, N'product23.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (24, N'Mizuno Rebula Cup Select AS TF Next Generation - Navy/Red/White', 1850000, N'Nike', N'tf', 1000000, N'product24.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (25, N'PUMA Future Z 1.1 FG/AG Game On - Yellow Alert/PUMA Black/PUMA White', 3950000, N'Puma', N'fg', 3000000, N'product25.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (26, N'PUMA Future 6.1 Netfit FG/AG Turbo - Luminous Pink/PUMA Black', 3690000, N'Puma', N'fg', 3000000, N'product26.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (27, N'PUMA ONE 20.4 TF RISE - ENERGY PEACH/FIZZY YELLOW/PUMA AGED SILVER', 1390000, N'Puma', N'tf', 1000000, N'product27.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (28, N'PUMA One 20.3 FG/AG Rise - Energy Peach/Fizzy Yellow/PUMA Aged Silver', 1650000, N'Puma', N'fg', 1000000, N'product28.jpg')
INSERT [dbo].[Products_HE160289] ([productId], [productName], [price], [brand], [type], [cost], [image]) VALUES (29, N'Nike Mercurial Vapor 14 Pro AG-PRO Renew - Black/Iron Grey', 3190000, N'Nike', N'ag', 3000000, N'product1.jpeg')
GO
INSERT [dbo].[Users_HE160289] ([userId], [userName], [loginName], [password], [roleId], [address], [phone], [email], [active]) VALUES (2, N'Nguyen Duc Huy', N'huy', N'123', 1, N'Ha Noiiii', N'01238512', N'huynd@gmail.com', 1)
INSERT [dbo].[Users_HE160289] ([userId], [userName], [loginName], [password], [roleId], [address], [phone], [email], [active]) VALUES (3, N'Tran Tien Dat', N'datt', N'3210', 1, N'Ha Noi', N'09281213', N'dat@gmai.com', 0)
INSERT [dbo].[Users_HE160289] ([userId], [userName], [loginName], [password], [roleId], [address], [phone], [email], [active]) VALUES (4, N'Tran Nam', N'Nam', N'nam123', 1, N'Ha Noi', N'31214', N'nam123@gmai.com', 1)
INSERT [dbo].[Users_HE160289] ([userId], [userName], [loginName], [password], [roleId], [address], [phone], [email], [active]) VALUES (5, N'Nguyen Quang Khaiiiii', N'khai', N'321', 1, N'Ha Noi', N'52548548', N'khai@gmail.com', 0)
INSERT [dbo].[Users_HE160289] ([userId], [userName], [loginName], [password], [roleId], [address], [phone], [email], [active]) VALUES (6, N'Viet Dunggg', N'dunggg', N'091234', 1, N'Ha Nam', N'0123456778', N'dung@gmail.com', 0)
INSERT [dbo].[Users_HE160289] ([userId], [userName], [loginName], [password], [roleId], [address], [phone], [email], [active]) VALUES (7, N'Nguyen Manh Hung', N'hung', N'11111', 1, N'Ha Noi', N'00123512245', N'hung@gmail.com', 1)
INSERT [dbo].[Users_HE160289] ([userId], [userName], [loginName], [password], [roleId], [address], [phone], [email], [active]) VALUES (10, N'Nguyen Phuong Thuy Duonggg', N'duong', N'321', 1, N'Ha Noi', N'09877123512', N'duong@gmail.com', 0)
INSERT [dbo].[Users_HE160289] ([userId], [userName], [loginName], [password], [roleId], [address], [phone], [email], [active]) VALUES (13, N'Tran Ngoc Cuong', N'cuong', N'123', 0, N'Ha Noi', N'0973245766', N'cuongtn251002@gmail.com', 1)
GO
USE [master]
GO
ALTER DATABASE [PRJ301_SE1625] SET  READ_WRITE 
GO
