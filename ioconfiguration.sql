USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_io_configuration]    Script Date: 18-03-2020 16:00:59 ******/
CREATE DATABASE [deloitte.acelive.ai_io_configuration]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_io_configuration', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_io_configuration.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_io_configuration_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_io_configuration_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_io_configuration].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_io_configuration', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_io_configuration]
GO
/****** Object:  Table [dbo].[input_configuration]    Script Date: 18-03-2020 16:01:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[input_configuration](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[access_1] [varchar](255) NOT NULL,
	[type] [varchar](100) NOT NULL,
	[output] [int] NULL,
	[workflow] [int] NULL,
	[active] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[output_configuration]    Script Date: 18-03-2020 16:01:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[output_configuration](
	[id] [int] IDENTITY(2,1) NOT NULL,
	[access_1] [varchar](255) NOT NULL,
	[type] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[input_configuration] ON 

INSERT [dbo].[input_configuration] ([id], [access_1], [type], [output], [workflow], [active]) VALUES (1, N'deloitte.acelive.ai/test_folder', N'Document', 1, 0, 1)
INSERT [dbo].[input_configuration] ([id], [access_1], [type], [output], [workflow], [active]) VALUES (2, N'deloitte.acelive.ai/test_folder2', N'Document', 1, 0, 1)
INSERT [dbo].[input_configuration] ([id], [access_1], [type], [output], [workflow], [active]) VALUES (3, N'deloitte.acelive.ai/IDS', N'Document', 1, 0, 1)
INSERT [dbo].[input_configuration] ([id], [access_1], [type], [output], [workflow], [active]) VALUES (4, N'deloitte.acelive.ai/Facebook', N'Document', 1, 0, 0)
INSERT [dbo].[input_configuration] ([id], [access_1], [type], [output], [workflow], [active]) VALUES (5, N'deloitte.acelive.ai/Bloomberg', N'Document', 1, 0, 1)
INSERT [dbo].[input_configuration] ([id], [access_1], [type], [output], [workflow], [active]) VALUES (6, N'deloitte.acelive.ai/Stratasys', N'Document', 1, 0, 1)
INSERT [dbo].[input_configuration] ([id], [access_1], [type], [output], [workflow], [active]) VALUES (7, N'deloitte.acelive.ai/RII', N'Document', 1, 0, 1)
INSERT [dbo].[input_configuration] ([id], [access_1], [type], [output], [workflow], [active]) VALUES (8, N'deloitte.acelive.ai/Netgear', N'Document', 1, 0, 1)
INSERT [dbo].[input_configuration] ([id], [access_1], [type], [output], [workflow], [active]) VALUES (9, N'deloitte.acelive.ai/Azul', N'Document', 1, 0, 1)
SET IDENTITY_INSERT [dbo].[input_configuration] OFF
SET IDENTITY_INSERT [dbo].[output_configuration] ON 

INSERT [dbo].[output_configuration] ([id], [access_1], [type]) VALUES (1, N'deloitte.acelive.ai', N'Document')
SET IDENTITY_INSERT [dbo].[output_configuration] OFF
ALTER TABLE [dbo].[input_configuration] ADD  DEFAULT (NULL) FOR [output]
GO
ALTER TABLE [dbo].[input_configuration] ADD  DEFAULT (NULL) FOR [workflow]
GO
ALTER TABLE [dbo].[input_configuration] ADD  DEFAULT (NULL) FOR [active]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_io_configuration] SET  READ_WRITE 
GO
