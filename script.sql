USE [master]
GO
/****** Object:  Database [Massviajeros]    Script Date: 04/29/2021 18:58:30 ******/
CREATE DATABASE [Massviajeros] ON  PRIMARY 
( NAME = N'Massviajeros', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Massviajeros.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Massviajeros_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Massviajeros_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Massviajeros] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Massviajeros].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Massviajeros] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Massviajeros] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Massviajeros] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Massviajeros] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Massviajeros] SET ARITHABORT OFF
GO
ALTER DATABASE [Massviajeros] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Massviajeros] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Massviajeros] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Massviajeros] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Massviajeros] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Massviajeros] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Massviajeros] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Massviajeros] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Massviajeros] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Massviajeros] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Massviajeros] SET  DISABLE_BROKER
GO
ALTER DATABASE [Massviajeros] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Massviajeros] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Massviajeros] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Massviajeros] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Massviajeros] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Massviajeros] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Massviajeros] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Massviajeros] SET  READ_WRITE
GO
ALTER DATABASE [Massviajeros] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Massviajeros] SET  MULTI_USER
GO
ALTER DATABASE [Massviajeros] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Massviajeros] SET DB_CHAINING OFF
GO
USE [Massviajeros]
GO
/****** Object:  Table [dbo].[viajero]    Script Date: 04/29/2021 18:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[viajero](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido] [nvarchar](50) NULL,
	[correo] [nvarchar](50) NULL,
	[telefono] [int] NULL,
	[edad] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turismo]    Script Date: 04/29/2021 18:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turismo](
	[Id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productor]    Script Date: 04/29/2021 18:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productor](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido] [nvarchar](50) NULL,
	[tipo] [nvarchar](50) NULL,
	[direccion] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 04/29/2021 18:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[huella_de_carbono]    Script Date: 04/29/2021 18:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[huella_de_carbono](
	[id] [int] NOT NULL,
	[c_combustible] [int] NULL,
	[desechos] [nvarchar](50) NULL,
	[c_agua] [int] NULL,
	[c_luz] [int] NULL,
	[autogestion] [nvarchar](50) NULL,
	[c_oxigeno] [int] NULL,
	[transporte] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ems_coin]    Script Date: 04/29/2021 18:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ems_coin](
	[id] [int] NOT NULL,
	[categorias] [nvarchar](50) NULL,
	[ventas] [nvarchar](50) NULL,
	[trafico] [nvarchar](50) NULL,
	[cantidad] [int] NULL,
	[total] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dato_ap_web]    Script Date: 04/29/2021 18:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dato_ap_web](
	[id] [int] NOT NULL,
	[cantidad_visitas] [nchar](10) NULL,
	[sexo] [nchar](10) NULL,
	[edad] [int] NULL,
	[ubicacion] [nvarchar](50) NULL,
	[trafico] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[app_movil]    Script Date: 04/29/2021 18:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[app_movil](
	[id] [int] NOT NULL,
	[cantidad] [nvarchar](50) NULL,
	[nombre] [nchar](10) NULL,
	[apellido] [nchar](10) NULL,
	[mail] [nvarchar](50) NULL,
	[fecha_nac] [nchar](10) NULL,
	[frec_uso] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[alojamiento]    Script Date: 04/29/2021 18:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alojamiento](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[correo] [nvarchar](50) NULL,
	[telefono] [int] NULL,
	[ciudad] [nvarchar](50) NULL,
	[tipo_usuario] [nvarchar](50) NULL,
	[fecha_desde] [date] NULL,
	[fecha_hasta] [date] NULL
) ON [PRIMARY]
GO
