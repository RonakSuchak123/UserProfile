USE [master]
GO
/****** Object:  Database [PersonalInfo]    Script Date: 8/7/2021 12:33:36 AM ******/
CREATE DATABASE [PersonalInfo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PersonalInfo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\PersonalInfo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PersonalInfo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\PersonalInfo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PersonalInfo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PersonalInfo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PersonalInfo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PersonalInfo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PersonalInfo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PersonalInfo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PersonalInfo] SET ARITHABORT OFF 
GO
ALTER DATABASE [PersonalInfo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PersonalInfo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PersonalInfo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PersonalInfo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PersonalInfo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PersonalInfo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PersonalInfo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PersonalInfo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PersonalInfo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PersonalInfo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PersonalInfo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PersonalInfo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PersonalInfo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PersonalInfo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PersonalInfo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PersonalInfo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PersonalInfo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PersonalInfo] SET RECOVERY FULL 
GO
ALTER DATABASE [PersonalInfo] SET  MULTI_USER 
GO
ALTER DATABASE [PersonalInfo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PersonalInfo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PersonalInfo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PersonalInfo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PersonalInfo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PersonalInfo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PersonalInfo', N'ON'
GO
ALTER DATABASE [PersonalInfo] SET QUERY_STORE = OFF
GO
USE [PersonalInfo]
GO
/****** Object:  Table [dbo].[UserProfileDetail]    Script Date: 8/7/2021 12:33:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfileDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ExperianceCompany] [nvarchar](100) NULL,
	[CompanyName] [nvarchar](250) NULL,
	[Designation] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfileHeader]    Script Date: 8/7/2021 12:33:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfileHeader](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Age] [int] NULL,
	[Gender] [char](1) NULL,
	[Address] [nvarchar](500) NULL,
	[Country] [nvarchar](250) NULL,
	[State] [nvarchar](250) NULL,
	[City] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserProfileDetail] ON 

INSERT [dbo].[UserProfileDetail] ([Id], [UserId], [ExperianceCompany], [CompanyName], [Designation], [CreatedBy], [CreatedOn]) VALUES (1, NULL, N'2', N'2', N'2', NULL, NULL)
INSERT [dbo].[UserProfileDetail] ([Id], [UserId], [ExperianceCompany], [CompanyName], [Designation], [CreatedBy], [CreatedOn]) VALUES (2, NULL, N'2', N'2', N'2', NULL, NULL)
INSERT [dbo].[UserProfileDetail] ([Id], [UserId], [ExperianceCompany], [CompanyName], [Designation], [CreatedBy], [CreatedOn]) VALUES (3, NULL, N'1', N'tes', N'bbb', NULL, NULL)
INSERT [dbo].[UserProfileDetail] ([Id], [UserId], [ExperianceCompany], [CompanyName], [Designation], [CreatedBy], [CreatedOn]) VALUES (4, 8, N'2', N'2', N'2', NULL, NULL)
INSERT [dbo].[UserProfileDetail] ([Id], [UserId], [ExperianceCompany], [CompanyName], [Designation], [CreatedBy], [CreatedOn]) VALUES (5, 9, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserProfileDetail] ([Id], [UserId], [ExperianceCompany], [CompanyName], [Designation], [CreatedBy], [CreatedOn]) VALUES (6, 10, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserProfileDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[UserProfileHeader] ON 

INSERT [dbo].[UserProfileHeader] ([UserId], [Name], [Age], [Gender], [Address], [Country], [State], [City], [CreatedBy], [CreatedOn]) VALUES (3, N'Ronak', 30, N'M', N'Ahmedabad', N'India', N'Gujarat', N'Ahm', NULL, NULL)
INSERT [dbo].[UserProfileHeader] ([UserId], [Name], [Age], [Gender], [Address], [Country], [State], [City], [CreatedBy], [CreatedOn]) VALUES (4, N'vishal', 33, N'M', N'Ahmedabad', N'India', N'Gujarat', N'Ahm', NULL, NULL)
INSERT [dbo].[UserProfileHeader] ([UserId], [Name], [Age], [Gender], [Address], [Country], [State], [City], [CreatedBy], [CreatedOn]) VALUES (5, N'Dhara', 33, N'M', N'Ahmedabad', N'India', N'Gujarat', N'Savar', NULL, NULL)
INSERT [dbo].[UserProfileHeader] ([UserId], [Name], [Age], [Gender], [Address], [Country], [State], [City], [CreatedBy], [CreatedOn]) VALUES (6, N'Dhara', 33, N'M', N'Ahmedabad', N'India', N'Gujarat', N'Savar', NULL, NULL)
INSERT [dbo].[UserProfileHeader] ([UserId], [Name], [Age], [Gender], [Address], [Country], [State], [City], [CreatedBy], [CreatedOn]) VALUES (7, N'pintesh', 18, N'M', N'surat', N'India', N'Gujarat', N'cc', NULL, NULL)
INSERT [dbo].[UserProfileHeader] ([UserId], [Name], [Age], [Gender], [Address], [Country], [State], [City], [CreatedBy], [CreatedOn]) VALUES (8, N'w', 1, N'm', N'Ahmedabad', N'India', N'Gujarat', N'Ahm', NULL, NULL)
INSERT [dbo].[UserProfileHeader] ([UserId], [Name], [Age], [Gender], [Address], [Country], [State], [City], [CreatedBy], [CreatedOn]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserProfileHeader] ([UserId], [Name], [Age], [Gender], [Address], [Country], [State], [City], [CreatedBy], [CreatedOn]) VALUES (10, N'er', 1, N'M', N'Ahmedabad', N'w', N'w', N'w', NULL, NULL)
INSERT [dbo].[UserProfileHeader] ([UserId], [Name], [Age], [Gender], [Address], [Country], [State], [City], [CreatedBy], [CreatedOn]) VALUES (11, N'33', 1, N'M', N'Ahmedabad', N'India', N'Gujarat', N'Ahm', NULL, NULL)
INSERT [dbo].[UserProfileHeader] ([UserId], [Name], [Age], [Gender], [Address], [Country], [State], [City], [CreatedBy], [CreatedOn]) VALUES (12, N'33', 1, N'M', N'Ahmedabad', N'India', N'Gujarat', N'Ahm', NULL, NULL)
INSERT [dbo].[UserProfileHeader] ([UserId], [Name], [Age], [Gender], [Address], [Country], [State], [City], [CreatedBy], [CreatedOn]) VALUES (13, N'ttt', 22, N'm', N'Ahmedabad', N'India', N'Gujarat', N'Ahm', NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserProfileHeader] OFF
GO
USE [master]
GO
ALTER DATABASE [PersonalInfo] SET  READ_WRITE 
GO
