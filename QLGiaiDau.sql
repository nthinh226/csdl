USE [master]
GO
/****** Object:  Database [QLGiaiDau]    Script Date: 16-Mar-21 11:00:39 AM ******/
CREATE DATABASE [QLGiaiDau]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLGiaiDau', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.NGOCTHINH\MSSQL\DATA\QLGiaiDau.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLGiaiDau_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.NGOCTHINH\MSSQL\DATA\QLGiaiDau_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLGiaiDau] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLGiaiDau].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLGiaiDau] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLGiaiDau] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLGiaiDau] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLGiaiDau] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLGiaiDau] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLGiaiDau] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLGiaiDau] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLGiaiDau] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLGiaiDau] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLGiaiDau] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLGiaiDau] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLGiaiDau] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLGiaiDau] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLGiaiDau] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLGiaiDau] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLGiaiDau] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLGiaiDau] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLGiaiDau] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLGiaiDau] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLGiaiDau] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLGiaiDau] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLGiaiDau] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLGiaiDau] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLGiaiDau] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLGiaiDau] SET  MULTI_USER 
GO
ALTER DATABASE [QLGiaiDau] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLGiaiDau] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLGiaiDau] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLGiaiDau] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLGiaiDau]
GO
/****** Object:  Table [dbo].[CO_DONVI]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CO_DONVI](
	[MAGIAI] [char](10) NOT NULL,
	[MADV] [char](10) NOT NULL,
	[SOTIENTAITRO] [float] NULL,
	[HIENVAT] [char](200) NULL,
 CONSTRAINT [PK_CO_DONVI] PRIMARY KEY NONCLUSTERED 
(
	[MAGIAI] ASC,
	[MADV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[diadiem]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diadiem](
	[madd] [nchar](10) NOT NULL,
	[tendd] [nchar](100) NULL,
	[diachidd] [nchar](100) NULL,
	[sdtdd] [nchar](10) NULL,
	[lat] [decimal](10, 2) NULL,
	[lng] [decimal](10, 2) NULL,
 CONSTRAINT [PK_diadiem] PRIMARY KEY CLUSTERED 
(
	[madd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[diadiem_tochuc_giai]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diadiem_tochuc_giai](
	[magiai] [nchar](10) NOT NULL,
	[madd] [nchar](10) NOT NULL,
	[thoigianbatdau] [date] NULL,
	[thoigianketthuc] [date] NULL,
 CONSTRAINT [PK_diadiem_tochuc_giai] PRIMARY KEY CLUSTERED 
(
	[magiai] ASC,
	[madd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DOI]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOI](
	[MADOI] [char](10) NOT NULL,
	[MATOCHUC] [char](10) NOT NULL,
	[TENDOI] [char](200) NULL,
	[NAMTHANHLAP] [int] NULL,
 CONSTRAINT [PK_DOI] PRIMARY KEY NONCLUSTERED 
(
	[MADOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DOIDUBI]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOIDUBI](
	[MADOI] [nchar](10) NULL,
	[MATOCHUC] [nchar](10) NULL,
	[TENDOI] [nchar](10) NULL,
	[NAMTHANHLAP] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONVITAITRO]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONVITAITRO](
	[MADV] [char](10) NOT NULL,
	[TENDV] [char](200) NULL,
	[DCDV] [char](200) NULL,
	[SDTDV] [char](11) NULL,
	[NAMTAITRO] [nchar](10) NULL,
 CONSTRAINT [PK_DONVITAITRO] PRIMARY KEY NONCLUSTERED 
(
	[MADV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIAIDAU]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAIDAU](
	[MAGIAI] [char](10) NOT NULL,
	[TENGIAI] [char](200) NULL,
	[THOIGIANTOCHUC] [datetime] NULL,
	[THOIGIANKETTHUC] [char](10) NULL,
 CONSTRAINT [PK_GIAIDAU] PRIMARY KEY NONCLUSTERED 
(
	[MAGIAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LYLICH]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LYLICH](
	[MATV] [char](10) NOT NULL,
	[TENCHA] [char](100) NULL,
	[TENME] [char](200) NULL,
	[COGIADINH] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THAMGIAGIAIDAU]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THAMGIAGIAIDAU](
	[MADOI] [char](10) NOT NULL,
	[MAGIAI] [char](10) NOT NULL,
	[KETQUA] [char](200) NULL,
	[THOIGIANBATDAU] [datetime] NULL,
	[THOIGIANKETTHUC] [char](10) NULL,
 CONSTRAINT [PK_THAMGIAGIAIDAU] PRIMARY KEY NONCLUSTERED 
(
	[MADOI] ASC,
	[MAGIAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THANHVIEN]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THANHVIEN](
	[MATV] [char](10) NOT NULL,
	[THA_MATV] [char](10) NULL,
	[TENTV] [char](200) NULL,
	[GT] [bit] NULL,
	[NGAYSINH] [datetime] NULL,
	[SDTTV] [char](10) NULL,
	[ho] [nchar](10) NULL,
	[chulot] [nchar](10) NULL,
	[ten] [nchar](10) NULL,
	[fullname] [nchar](10) NULL,
 CONSTRAINT [PK_THANHVIEN] PRIMARY KEY NONCLUSTERED 
(
	[MATV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THANHVIENTHAMGIA]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THANHVIENTHAMGIA](
	[MADOI] [char](10) NOT NULL,
	[MATV] [char](10) NOT NULL,
 CONSTRAINT [PK_THANHVIENTHAMGIA] PRIMARY KEY NONCLUSTERED 
(
	[MADOI] ASC,
	[MATV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TOCHUC]    Script Date: 16-Mar-21 11:00:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TOCHUC](
	[MATOCHUC] [char](10) NOT NULL,
	[TENTOCHUC] [char](200) NULL,
	[SDT] [char](11) NULL,
	[DIACHI] [char](200) NULL,
	[EMAIL] [char](200) NULL,
	[Namthanhlap] [nchar](10) NULL,
 CONSTRAINT [PK_TOCHUC] PRIMARY KEY NONCLUSTERED 
(
	[MATOCHUC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [rangbuocemail_tochuc] UNIQUE NONCLUSTERED 
(
	[EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [rangbuocsdt_tochuc] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CO_DONVI_FK]    Script Date: 16-Mar-21 11:00:39 AM ******/
CREATE NONCLUSTERED INDEX [CO_DONVI_FK] ON [dbo].[CO_DONVI]
(
	[MADV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CO_DONVI2_FK]    Script Date: 16-Mar-21 11:00:39 AM ******/
CREATE NONCLUSTERED INDEX [CO_DONVI2_FK] ON [dbo].[CO_DONVI]
(
	[MAGIAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LAP_TEAM_FK]    Script Date: 16-Mar-21 11:00:39 AM ******/
CREATE NONCLUSTERED INDEX [LAP_TEAM_FK] ON [dbo].[DOI]
(
	[MATOCHUC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [COLYLICH3_FK]    Script Date: 16-Mar-21 11:00:39 AM ******/
CREATE NONCLUSTERED INDEX [COLYLICH3_FK] ON [dbo].[LYLICH]
(
	[MATV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [THAMGIAGIAIDAU_FK]    Script Date: 16-Mar-21 11:00:39 AM ******/
CREATE NONCLUSTERED INDEX [THAMGIAGIAIDAU_FK] ON [dbo].[THAMGIAGIAIDAU]
(
	[MAGIAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [THAMGIAGIAIDAU2_FK]    Script Date: 16-Mar-21 11:00:39 AM ******/
CREATE NONCLUSTERED INDEX [THAMGIAGIAIDAU2_FK] ON [dbo].[THAMGIAGIAIDAU]
(
	[MADOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LA_DOITRUONG_FK]    Script Date: 16-Mar-21 11:00:39 AM ******/
CREATE NONCLUSTERED INDEX [LA_DOITRUONG_FK] ON [dbo].[THANHVIEN]
(
	[THA_MATV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [THANHVIENTHAMGIA_FK]    Script Date: 16-Mar-21 11:00:39 AM ******/
CREATE NONCLUSTERED INDEX [THANHVIENTHAMGIA_FK] ON [dbo].[THANHVIENTHAMGIA]
(
	[MATV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [THANHVIENTHAMGIA2_FK]    Script Date: 16-Mar-21 11:00:39 AM ******/
CREATE NONCLUSTERED INDEX [THANHVIENTHAMGIA2_FK] ON [dbo].[THANHVIENTHAMGIA]
(
	[MADOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_DONVI]  WITH CHECK ADD  CONSTRAINT [FK_CO_DONVI_CO_DONVI_DONVITAI] FOREIGN KEY([MADV])
REFERENCES [dbo].[DONVITAITRO] ([MADV])
GO
ALTER TABLE [dbo].[CO_DONVI] CHECK CONSTRAINT [FK_CO_DONVI_CO_DONVI_DONVITAI]
GO
ALTER TABLE [dbo].[CO_DONVI]  WITH CHECK ADD  CONSTRAINT [FK_CO_DONVI_CO_DONVI2_GIAIDAU] FOREIGN KEY([MAGIAI])
REFERENCES [dbo].[GIAIDAU] ([MAGIAI])
GO
ALTER TABLE [dbo].[CO_DONVI] CHECK CONSTRAINT [FK_CO_DONVI_CO_DONVI2_GIAIDAU]
GO
ALTER TABLE [dbo].[LYLICH]  WITH CHECK ADD  CONSTRAINT [FK_LYLICH_COLYLICH3_THANHVIE] FOREIGN KEY([MATV])
REFERENCES [dbo].[THANHVIEN] ([MATV])
GO
ALTER TABLE [dbo].[LYLICH] CHECK CONSTRAINT [FK_LYLICH_COLYLICH3_THANHVIE]
GO
ALTER TABLE [dbo].[THAMGIAGIAIDAU]  WITH CHECK ADD  CONSTRAINT [FK_THAMGIAG_THAMGIAGI_DOI] FOREIGN KEY([MADOI])
REFERENCES [dbo].[DOI] ([MADOI])
GO
ALTER TABLE [dbo].[THAMGIAGIAIDAU] CHECK CONSTRAINT [FK_THAMGIAG_THAMGIAGI_DOI]
GO
ALTER TABLE [dbo].[THAMGIAGIAIDAU]  WITH CHECK ADD  CONSTRAINT [FK_THAMGIAG_THAMGIAGI_GIAIDAU] FOREIGN KEY([MAGIAI])
REFERENCES [dbo].[GIAIDAU] ([MAGIAI])
GO
ALTER TABLE [dbo].[THAMGIAGIAIDAU] CHECK CONSTRAINT [FK_THAMGIAG_THAMGIAGI_GIAIDAU]
GO
ALTER TABLE [dbo].[THANHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_THANHVIE_LA_DOITRU_THANHVIE] FOREIGN KEY([THA_MATV])
REFERENCES [dbo].[THANHVIEN] ([MATV])
GO
ALTER TABLE [dbo].[THANHVIEN] CHECK CONSTRAINT [FK_THANHVIE_LA_DOITRU_THANHVIE]
GO
ALTER TABLE [dbo].[THANHVIENTHAMGIA]  WITH CHECK ADD  CONSTRAINT [FK_THANHVIE_THANHVIEN_DOI] FOREIGN KEY([MADOI])
REFERENCES [dbo].[DOI] ([MADOI])
GO
ALTER TABLE [dbo].[THANHVIENTHAMGIA] CHECK CONSTRAINT [FK_THANHVIE_THANHVIEN_DOI]
GO
ALTER TABLE [dbo].[THANHVIENTHAMGIA]  WITH CHECK ADD  CONSTRAINT [FK_THANHVIE_THANHVIEN_THANHVIE] FOREIGN KEY([MATV])
REFERENCES [dbo].[THANHVIEN] ([MATV])
GO
ALTER TABLE [dbo].[THANHVIENTHAMGIA] CHECK CONSTRAINT [FK_THANHVIE_THANHVIEN_THANHVIE]
GO
ALTER TABLE [dbo].[TOCHUC]  WITH CHECK ADD CHECK  (([NAMTHANHLAP]>=(2000)))
GO
USE [master]
GO
ALTER DATABASE [QLGiaiDau] SET  READ_WRITE 
GO
