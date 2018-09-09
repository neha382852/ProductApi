USE [master]
GO
/****** Object:  Database [ProductsApi]    Script Date: 9/9/2018 8:38:21 PM ******/
CREATE DATABASE [ProductsApi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProductsApi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ProductsApi.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProductsApi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ProductsApi_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProductsApi] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductsApi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductsApi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProductsApi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProductsApi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProductsApi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProductsApi] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProductsApi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProductsApi] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ProductsApi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProductsApi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProductsApi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProductsApi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProductsApi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProductsApi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProductsApi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProductsApi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProductsApi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProductsApi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProductsApi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProductsApi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProductsApi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProductsApi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProductsApi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProductsApi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProductsApi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProductsApi] SET  MULTI_USER 
GO
ALTER DATABASE [ProductsApi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProductsApi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProductsApi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProductsApi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ProductsApi]
GO
/****** Object:  Table [dbo].[ActivityProduct]    Script Date: 9/9/2018 8:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActivityProduct](
	[ProductId] [int] NOT NULL,
	[Price] [int] NULL,
	[Name] [varchar](50) NULL,
	[NumberOfPeople] [int] NULL,
	[ActivityType] [varchar](50) NULL,
	[ActivityLocation] [varchar](50) NULL,
	[IsBooked] [varchar](50) NULL,
	[IsSaved] [varchar](50) NULL,
 CONSTRAINT [PK_ActivityProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AirProduct]    Script Date: 9/9/2018 8:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AirProduct](
	[ProductId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Price] [int] NULL,
	[ArrivalDate] [int] NULL,
	[ArrivalTime] [int] NULL,
	[DepartureDate] [int] NULL,
	[DepartureTime] [int] NULL,
	[Source] [varchar](50) NULL,
	[Destination] [varchar](50) NULL,
	[IsBooked] [varchar](50) NULL,
	[IsSaved] [varchar](50) NULL,
 CONSTRAINT [PK_AirProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarProduct]    Script Date: 9/9/2018 8:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarProduct](
	[ProductId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Price] [int] NULL,
	[ModelNo] [int] NULL,
	[CompanyName] [varchar](50) NULL,
	[IsBooked] [varchar](50) NULL,
	[IsSaved] [varchar](50) NULL,
 CONSTRAINT [PK_CarProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HotelProduct]    Script Date: 9/9/2018 8:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HotelProduct](
	[ProductId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[NoOfAvailableRooms] [int] NULL,
	[RoomPrice] [int] NULL,
	[RoomType] [varchar](50) NULL,
	[WifiAvailability] [varchar](50) NULL,
	[IsBooked] [varchar](50) NULL,
	[IsSaved] [varchar](50) NULL,
 CONSTRAINT [PK_HotelProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [ProductsApi] SET  READ_WRITE 
GO
