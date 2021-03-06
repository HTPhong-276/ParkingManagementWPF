USE [ParkingDBWpf]
GO
ALTER TABLE [dbo].[Vehicles] DROP CONSTRAINT [FK__Vehicles__UserId__286302EC]
GO
ALTER TABLE [dbo].[Vehicles] DROP CONSTRAINT [FK__Vehicles__TypeId__29572725]
GO
ALTER TABLE [dbo].[Lots] DROP CONSTRAINT [FK__Lots__TypeId__2C3393D0]
GO
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [FK__Invoices__Vehicl__2F10007B]
GO
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [FK__Invoices__LotId__300424B4]
GO
/****** Object:  Table [dbo].[VehicleTypes]    Script Date: 7/13/2022 10:57:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleTypes]') AND type in (N'U'))
DROP TABLE [dbo].[VehicleTypes]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 7/13/2022 10:57:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicles]') AND type in (N'U'))
DROP TABLE [dbo].[Vehicles]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/13/2022 10:57:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Lots]    Script Date: 7/13/2022 10:57:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lots]') AND type in (N'U'))
DROP TABLE [dbo].[Lots]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 7/13/2022 10:57:54 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices]') AND type in (N'U'))
DROP TABLE [dbo].[Invoices]
GO
USE [master]
GO
/****** Object:  Database [ParkingDBWpf]    Script Date: 7/13/2022 10:57:54 AM ******/
DROP DATABASE [ParkingDBWpf]
GO
/****** Object:  Database [ParkingDBWpf]    Script Date: 7/13/2022 10:57:54 AM ******/
CREATE DATABASE [ParkingDBWpf]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ParkingDBWpf', FILENAME = N'F:\Database\ParkingDBWpf.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ParkingDBWpf_log', FILENAME = N'F:\Database\ParkingDBWpf_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ParkingDBWpf] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ParkingDBWpf].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ParkingDBWpf] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET ARITHABORT OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ParkingDBWpf] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ParkingDBWpf] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ParkingDBWpf] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ParkingDBWpf] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET RECOVERY FULL 
GO
ALTER DATABASE [ParkingDBWpf] SET  MULTI_USER 
GO
ALTER DATABASE [ParkingDBWpf] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ParkingDBWpf] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ParkingDBWpf] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ParkingDBWpf] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ParkingDBWpf] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ParkingDBWpf] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ParkingDBWpf', N'ON'
GO
ALTER DATABASE [ParkingDBWpf] SET QUERY_STORE = OFF
GO
USE [ParkingDBWpf]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 7/13/2022 10:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[InvoiceId] [int] IDENTITY(1,1) NOT NULL,
	[CheckInTime] [datetime] NULL,
	[CheckInOut] [datetime] NULL,
	[VehicleCode] [nvarchar](20) NOT NULL,
	[LotId] [nvarchar](5) NOT NULL,
	[TotalPaid] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lots]    Script Date: 7/13/2022 10:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lots](
	[LotId] [nvarchar](5) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/13/2022 10:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](225) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [varchar](15) NULL,
	[Role] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 7/13/2022 10:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[VehicleCode] [nvarchar](20) NOT NULL,
	[Brand] [nvarchar](20) NULL,
	[Name] [nvarchar](20) NULL,
	[UserId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[IsParking] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[VehicleCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleTypes]    Script Date: 7/13/2022 10:57:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleTypes](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[PricePerHour] [money] NOT NULL,
	[PricePerDay] [money] NOT NULL,
	[PricePerWeek] [money] NOT NULL,
	[PricePerMonth] [money] NOT NULL,
	[PricePerYear] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 

INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-01-15T00:00:00.000' AS DateTime), N'A123-456', N'A1', 100000.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (2, CAST(N'2021-01-02T00:00:00.000' AS DateTime), CAST(N'2021-01-03T00:00:00.000' AS DateTime), N'B123-654', N'E5', 100000.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (4, CAST(N'2021-05-05T00:00:00.000' AS DateTime), CAST(N'2021-05-06T00:00:00.000' AS DateTime), N'A123-456', N'A10', 100000.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (5, CAST(N'2021-06-05T00:00:00.000' AS DateTime), CAST(N'2021-06-10T00:00:00.000' AS DateTime), N'A-55-555', N'B5', 100000.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (6, CAST(N'2021-03-10T00:00:00.000' AS DateTime), CAST(N'2022-02-01T00:00:00.000' AS DateTime), N'A88-888-8', N'D1', 100000.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (7, CAST(N'2022-05-05T00:00:00.000' AS DateTime), CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'A222-222', N'A5', 1000.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (8, CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'B123-654', N'E1', 1000.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (9, CAST(N'2022-07-09T09:17:19.000' AS DateTime), CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'A123-456', N'A1', 1000.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (10, CAST(N'2022-07-09T09:20:44.000' AS DateTime), CAST(N'2022-05-05T00:00:00.000' AS DateTime), N'A-55-555', N'C2', 1000.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (11, CAST(N'2022-07-09T09:29:52.000' AS DateTime), CAST(N'2022-07-09T09:29:52.000' AS DateTime), N'A123-456', N'A1', 1000.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (12, CAST(N'2022-07-09T09:30:33.000' AS DateTime), CAST(N'2022-07-09T09:29:52.000' AS DateTime), N'A222-222', N'A2', 1000.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (13, CAST(N'2022-07-09T09:31:13.000' AS DateTime), CAST(N'2022-07-09T09:29:52.000' AS DateTime), N'A-55-555', N'A3', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (14, CAST(N'2022-07-09T09:34:30.000' AS DateTime), CAST(N'2022-07-09T09:34:30.000' AS DateTime), N'A123-456', N'A1', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (15, CAST(N'2022-07-09T09:35:49.000' AS DateTime), CAST(N'2022-07-09T09:34:30.000' AS DateTime), N'A222-222', N'A2', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (16, CAST(N'2022-07-09T09:38:28.000' AS DateTime), CAST(N'2022-07-09T09:34:30.000' AS DateTime), N'A-55-555', N'A3', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (17, CAST(N'2022-07-09T09:40:49.000' AS DateTime), CAST(N'2022-07-09T09:40:49.000' AS DateTime), N'A123-456', N'A1', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (18, CAST(N'2022-07-09T09:41:39.000' AS DateTime), CAST(N'2022-07-09T09:40:49.000' AS DateTime), N'A222-222', N'A2', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (19, CAST(N'2022-07-09T09:45:39.000' AS DateTime), CAST(N'2022-07-09T09:40:49.000' AS DateTime), N'A-55-555', N'A3', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (20, CAST(N'2022-07-09T09:47:07.000' AS DateTime), CAST(N'2022-07-09T09:51:58.000' AS DateTime), N'B123-654', N'E1', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (21, CAST(N'2022-07-09T09:48:57.000' AS DateTime), CAST(N'2022-07-09T09:51:58.000' AS DateTime), N'A123-456', N'A1', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (22, CAST(N'2022-07-09T09:51:58.000' AS DateTime), CAST(N'2022-07-09T09:51:58.000' AS DateTime), N'A222-222', N'A2', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (23, CAST(N'2022-07-09T09:52:06.000' AS DateTime), CAST(N'2022-07-09T09:52:06.000' AS DateTime), N'A222-222', N'B1', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (24, CAST(N'2022-07-09T09:59:42.000' AS DateTime), CAST(N'2022-07-09T09:59:42.000' AS DateTime), N'A123-456', N'A1', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (25, CAST(N'2022-07-09T10:00:01.000' AS DateTime), CAST(N'2022-07-09T09:59:42.000' AS DateTime), N'A222-222', N'A2', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (26, CAST(N'2022-07-09T10:00:09.000' AS DateTime), CAST(N'2022-07-09T09:59:42.000' AS DateTime), N'A-55-555', N'A3', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (27, CAST(N'2022-07-09T10:03:12.000' AS DateTime), CAST(N'2022-07-09T10:03:12.000' AS DateTime), N'A222-222', N'A1', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (28, CAST(N'2022-07-09T10:05:08.000' AS DateTime), CAST(N'2022-07-09T10:03:12.000' AS DateTime), N'A-55-555', N'A2', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (29, CAST(N'2022-07-09T10:08:01.000' AS DateTime), CAST(N'2022-07-09T10:03:12.000' AS DateTime), N'A123-456', N'A3', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (30, CAST(N'2022-07-09T10:09:21.000' AS DateTime), CAST(N'2022-07-09T10:09:21.000' AS DateTime), N'A123-456', N'A1', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (31, CAST(N'2022-07-09T10:17:40.000' AS DateTime), CAST(N'2022-07-09T10:09:21.000' AS DateTime), N'A222-222', N'A2', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (32, CAST(N'2022-07-09T10:17:46.000' AS DateTime), CAST(N'2022-07-09T10:09:21.000' AS DateTime), N'A-55-555', N'A3', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (33, CAST(N'2022-07-09T10:29:28.000' AS DateTime), CAST(N'2022-07-09T10:09:21.000' AS DateTime), N'A123-456', N'A1', 0.0000)
INSERT [dbo].[Invoices] ([InvoiceId], [CheckInTime], [CheckInOut], [VehicleCode], [LotId], [TotalPaid]) VALUES (34, CAST(N'2022-07-09T10:30:14.000' AS DateTime), CAST(N'2022-07-09T10:40:25.000' AS DateTime), N'A123-456', N'A1', 0.0000)
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'A1', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'A10', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'A2', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'A3', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'A4', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'A5', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'A6', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'A7', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'A8', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'A9', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'B1', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'B10', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'B2', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'B3', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'B4', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'B5', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'B6', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'B7', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'B8', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'B9', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'C1', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'C10', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'C2', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'C3', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'C4', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'C5', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'C6', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'C7', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'C8', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'C9', 1, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'D1', 2, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'D2', 2, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'D3', 2, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'D4', 2, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'D5', 2, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'D6', 2, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'D7', 2, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'D8', 2, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'E1', 3, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'E2', 3, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'E3', 3, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'E4', 3, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'E5', 3, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'E6', 3, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'E7', 3, 0)
INSERT [dbo].[Lots] ([LotId], [TypeId], [Status]) VALUES (N'E8', 3, 0)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Username], [Password], [Email], [Address], [Phone], [Role]) VALUES (1, N'user1', N'24C9E15E52AFC47C225B757E7BEE1F9D', N'abc@gmail.com', N'Đà Nẵng', N'0905123456', N'USER')
INSERT [dbo].[Users] ([UserId], [Username], [Password], [Email], [Address], [Phone], [Role]) VALUES (3, N'123', N'202CB962AC59075B964B07152D234B70', N'132@gmail.com', NULL, NULL, N'USER')
INSERT [dbo].[Users] ([UserId], [Username], [Password], [Email], [Address], [Phone], [Role]) VALUES (4, N'user2', N'7E58D63B60197CEB55A1C487989A3720', N'user2@gmail.com', NULL, NULL, N'USER')
INSERT [dbo].[Users] ([UserId], [Username], [Password], [Email], [Address], [Phone], [Role]) VALUES (5, N'a', N'0CC175B9C0F1B6A831C399E269772661', N'a@gmail.com', N'No where', N'0909987654', N'USER')
INSERT [dbo].[Users] ([UserId], [Username], [Password], [Email], [Address], [Phone], [Role]) VALUES (6, N'admin', N'21232F297A57A5A743894A0E4A801FC3', N'admin@gmail.com', NULL, N'0905445566', N'ADMIN')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
INSERT [dbo].[Vehicles] ([VehicleCode], [Brand], [Name], [UserId], [TypeId], [IsParking]) VALUES (N'A123-456', N'Toyota', N'Toyota', 1, 1, 0)
INSERT [dbo].[Vehicles] ([VehicleCode], [Brand], [Name], [UserId], [TypeId], [IsParking]) VALUES (N'A222-222', N'Honda', N'Honda', 1, 1, 0)
INSERT [dbo].[Vehicles] ([VehicleCode], [Brand], [Name], [UserId], [TypeId], [IsParking]) VALUES (N'A43-123456', N'', N'', 5, 1, 0)
INSERT [dbo].[Vehicles] ([VehicleCode], [Brand], [Name], [UserId], [TypeId], [IsParking]) VALUES (N'A46-123456', N'Toyota123', N'Toyota', 5, 1, 0)
INSERT [dbo].[Vehicles] ([VehicleCode], [Brand], [Name], [UserId], [TypeId], [IsParking]) VALUES (N'A-55-555', N'h', N'h', 1, 1, 0)
INSERT [dbo].[Vehicles] ([VehicleCode], [Brand], [Name], [UserId], [TypeId], [IsParking]) VALUES (N'A88-888-8', N'Haha', N'Haha', 1, 2, 0)
INSERT [dbo].[Vehicles] ([VehicleCode], [Brand], [Name], [UserId], [TypeId], [IsParking]) VALUES (N'B123-654', N'bibi', N'bibi', 1, 3, 0)
INSERT [dbo].[Vehicles] ([VehicleCode], [Brand], [Name], [UserId], [TypeId], [IsParking]) VALUES (N'D46-55964', N'Huyndai', N'Huyndai', 5, 2, 0)
GO
SET IDENTITY_INSERT [dbo].[VehicleTypes] ON 

INSERT [dbo].[VehicleTypes] ([TypeId], [Name], [PricePerHour], [PricePerDay], [PricePerWeek], [PricePerMonth], [PricePerYear]) VALUES (1, N'Car', 10000.0000, 100000.0000, 500000.0000, 1500000.0000, 5000000.0000)
INSERT [dbo].[VehicleTypes] ([TypeId], [Name], [PricePerHour], [PricePerDay], [PricePerWeek], [PricePerMonth], [PricePerYear]) VALUES (2, N'Bus', 12000.0000, 120000.0000, 600000.0000, 1800000.0000, 6500000.0000)
INSERT [dbo].[VehicleTypes] ([TypeId], [Name], [PricePerHour], [PricePerDay], [PricePerWeek], [PricePerMonth], [PricePerYear]) VALUES (3, N'Truck', 18000.0000, 200000.0000, 750000.0000, 2500000.0000, 7500000.0000)
SET IDENTITY_INSERT [dbo].[VehicleTypes] OFF
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD FOREIGN KEY([LotId])
REFERENCES [dbo].[Lots] ([LotId])
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD FOREIGN KEY([VehicleCode])
REFERENCES [dbo].[Vehicles] ([VehicleCode])
GO
ALTER TABLE [dbo].[Lots]  WITH CHECK ADD FOREIGN KEY([TypeId])
REFERENCES [dbo].[VehicleTypes] ([TypeId])
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD FOREIGN KEY([TypeId])
REFERENCES [dbo].[VehicleTypes] ([TypeId])
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
USE [master]
GO
ALTER DATABASE [ParkingDBWpf] SET  READ_WRITE 
GO
