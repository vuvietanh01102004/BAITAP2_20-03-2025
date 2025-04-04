USE [master]
GO
/****** Object:  Database [BAITAP3]    Script Date: 30/03/2025 12:55:08 SA ******/
CREATE DATABASE [BAITAP3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BAITAP2', FILENAME = N'D:\SQL Sever (Database)\BAITAP2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BAITAP2_log', FILENAME = N'D:\SQL Sever (Database)\BAITAP2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BAITAP3] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BAITAP3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BAITAP3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BAITAP3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BAITAP3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BAITAP3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BAITAP3] SET ARITHABORT OFF 
GO
ALTER DATABASE [BAITAP3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BAITAP3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BAITAP3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BAITAP3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BAITAP3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BAITAP3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BAITAP3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BAITAP3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BAITAP3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BAITAP3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BAITAP3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BAITAP3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BAITAP3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BAITAP3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BAITAP3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BAITAP3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BAITAP3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BAITAP3] SET RECOVERY FULL 
GO
ALTER DATABASE [BAITAP3] SET  MULTI_USER 
GO
ALTER DATABASE [BAITAP3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BAITAP3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BAITAP3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BAITAP3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BAITAP3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BAITAP3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BAITAP3', N'ON'
GO
ALTER DATABASE [BAITAP3] SET QUERY_STORE = ON
GO
ALTER DATABASE [BAITAP3] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BAITAP3]
GO
/****** Object:  Table [dbo].[BoMon]    Script Date: 30/03/2025 12:55:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[MaBM] [nchar](10) NOT NULL,
	[TenBM] [nchar](10) NULL,
	[MaKhoa] [nchar](10) NULL,
 CONSTRAINT [PK_BoMon] PRIMARY KEY CLUSTERED 
(
	[MaBM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 30/03/2025 12:55:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[id] [nchar](13) NOT NULL,
	[id_dk] [nchar](13) NOT NULL,
	[Diem] [float] NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKMH]    Script Date: 30/03/2025 12:55:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKMH](
	[id_dk] [nchar](13) NOT NULL,
	[MaLopHP] [nchar](13) NOT NULL,
	[MaSV] [nchar](13) NOT NULL,
	[DiemThi] [float] NULL,
	[PhanTramThi] [float] NULL,
 CONSTRAINT [PK_DKMH] PRIMARY KEY CLUSTERED 
(
	[id_dk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 30/03/2025 12:55:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[Magv] [nchar](10) NOT NULL,
	[HoTen] [nchar](10) NULL,
	[NgaySinh] [date] NULL,
	[MaBM] [nchar](10) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[Magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GVCN]    Script Date: 30/03/2025 12:55:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GVCN](
	[Malop] [nchar](10) NOT NULL,
	[MaGV] [nchar](10) NOT NULL,
	[HK] [nchar](10) NOT NULL,
 CONSTRAINT [PK_GVCN] PRIMARY KEY CLUSTERED 
(
	[Malop] ASC,
	[MaGV] ASC,
	[HK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 30/03/2025 12:55:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [nchar](10) NOT NULL,
	[TenKhoa] [nchar](10) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 30/03/2025 12:55:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [nchar](10) NOT NULL,
	[TenLop] [nchar](10) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHP]    Script Date: 30/03/2025 12:55:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHP](
	[MaLopHP] [nchar](10) NOT NULL,
	[TenLopHP] [nchar](10) NULL,
	[HK] [nchar](10) NULL,
	[MaMon] [nchar](10) NULL,
	[MaGV] [nchar](10) NULL,
 CONSTRAINT [PK_LopHP] PRIMARY KEY CLUSTERED 
(
	[MaLopHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopSV]    Script Date: 30/03/2025 12:55:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopSV](
	[MaLop] [nchar](10) NOT NULL,
	[MaSV] [nchar](10) NOT NULL,
	[ChucVu] [nchar](10) NULL,
 CONSTRAINT [PK_LopSV] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC,
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 30/03/2025 12:55:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMon] [nchar](10) NOT NULL,
	[TenMon] [nchar](10) NULL,
	[STC] [nchar](10) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinhvien]    Script Date: 30/03/2025 12:55:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinhvien](
	[MaSV] [nchar](14) NOT NULL,
	[Hoten] [nchar](60) NOT NULL,
	[Ngaysinh] [date] NULL,
 CONSTRAINT [PK_Sinhvien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BoMon]  WITH CHECK ADD  CONSTRAINT [FK_BoMon_BoMon_MaKhoa] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[BoMon] CHECK CONSTRAINT [FK_BoMon_BoMon_MaKhoa]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_GVCN_MaLop] FOREIGN KEY([Malop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_GVCN_MaLop]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_LopHP_MaGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([Magv])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_LopHP_MaGV]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_LopSV_MaLop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_LopSV_MaLop]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_LopSV_MaSV] FOREIGN KEY([MaLop], [MaSV])
REFERENCES [dbo].[LopSV] ([MaLop], [MaSV])
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_LopSV_MaSV]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [CK_Diem] CHECK  (([diem]>=(0) AND [diem]<=(10)))
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [CK_Diem]
GO
USE [master]
GO
ALTER DATABASE [BAITAP3] SET  READ_WRITE 
GO
