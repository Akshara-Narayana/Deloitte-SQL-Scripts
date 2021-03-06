USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_system]    Script Date: 18-03-2020 16:17:09 ******/
CREATE DATABASE [deloitte.acelive.ai_system]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_system', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_system.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_system_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_system_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_system].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_system', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_system]
GO
/****** Object:  Table [dbo].[configuration]    Script Date: 18-03-2020 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[configuration](
	[id] [int] IDENTITY(5,1) NOT NULL,
	[container] [int] NOT NULL,
	[rule] [varchar](max) NOT NULL,
	[priority] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[container_status]    Script Date: 18-03-2020 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[container_status](
	[id] [int] IDENTITY(5,1) NOT NULL,
	[container] [int] NOT NULL,
	[lock] [smallint] NOT NULL,
	[request] [smallint] NOT NULL,
	[error_state] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[containers]    Script Date: 18-03-2020 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[containers](
	[id] [int] IDENTITY(5,1) NOT NULL,
	[container_name] [varchar](100) NOT NULL,
	[display_name] [varchar](100) NOT NULL,
	[file_category] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[configuration] ON 

INSERT [dbo].[configuration] ([id], [container], [rule], [priority]) VALUES (1, 2, N'', 4)
INSERT [dbo].[configuration] ([id], [container], [rule], [priority]) VALUES (2, 1, N'{"csv_watcher": 0}', 1)
INSERT [dbo].[configuration] ([id], [container], [rule], [priority]) VALUES (3, 3, N'{"recon_services": 0}', 3)
INSERT [dbo].[configuration] ([id], [container], [rule], [priority]) VALUES (4, 4, N'{"recon_services": 0}', 2)
SET IDENTITY_INSERT [dbo].[configuration] OFF
SET IDENTITY_INSERT [dbo].[container_status] ON 

INSERT [dbo].[container_status] ([id], [container], [lock], [request], [error_state]) VALUES (1, 1, 0, 0, 0)
INSERT [dbo].[container_status] ([id], [container], [lock], [request], [error_state]) VALUES (2, 2, 0, 0, 0)
INSERT [dbo].[container_status] ([id], [container], [lock], [request], [error_state]) VALUES (3, 3, 0, 0, 0)
INSERT [dbo].[container_status] ([id], [container], [lock], [request], [error_state]) VALUES (4, 4, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[container_status] OFF
SET IDENTITY_INSERT [dbo].[containers] ON 

INSERT [dbo].[containers] ([id], [container_name], [display_name], [file_category]) VALUES (1, N'recon_services', N'Reconciliation', NULL)
INSERT [dbo].[containers] ([id], [container_name], [display_name], [file_category]) VALUES (2, N'folder_monitor', N'Folder Monitoring', NULL)
INSERT [dbo].[containers] ([id], [container_name], [display_name], [file_category]) VALUES (3, N'service_bridge', N'Service Bridge', NULL)
INSERT [dbo].[containers] ([id], [container_name], [display_name], [file_category]) VALUES (4, N'csv_watcher', N'CSV Watcher', NULL)
SET IDENTITY_INSERT [dbo].[containers] OFF
ALTER TABLE [dbo].[configuration] ADD  DEFAULT (NULL) FOR [priority]
GO
ALTER TABLE [dbo].[container_status] ADD  DEFAULT ('0') FOR [lock]
GO
ALTER TABLE [dbo].[container_status] ADD  DEFAULT ('0') FOR [request]
GO
ALTER TABLE [dbo].[container_status] ADD  DEFAULT ('0') FOR [error_state]
GO
ALTER TABLE [dbo].[containers] ADD  DEFAULT (NULL) FOR [file_category]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_system] SET  READ_WRITE 
GO
