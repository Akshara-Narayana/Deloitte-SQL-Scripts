USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_reports]    Script Date: 18-03-2020 16:12:17 ******/
CREATE DATABASE [deloitte.acelive.ai_reports]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_reports', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_reports.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_reports_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_reports_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_reports].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_reports', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_reports]
GO
/****** Object:  Table [dbo].[report_types]    Script Date: 18-03-2020 16:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_types](
	[id] [int] IDENTITY(55,1) NOT NULL,
	[report_type] [varchar](255) NOT NULL,
	[query] [varchar](max) NULL,
	[db] [varchar](100) NULL,
	[function] [varchar](255) NULL,
	[tran_date_col_name] [char](50) NULL,
	[source] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_types_28_01]    Script Date: 18-03-2020 16:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_types_28_01](
	[id] [int] IDENTITY(57,1) NOT NULL,
	[report_type] [varchar](255) NOT NULL,
	[query] [varchar](max) NULL,
	[db] [varchar](100) NULL,
	[function] [varchar](255) NULL,
	[tran_date_col_name] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_types_config]    Script Date: 18-03-2020 16:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_types_config](
	[id] [int] IDENTITY(55,1) NOT NULL,
	[report_type] [varchar](255) NOT NULL,
	[report_fname] [varchar](max) NULL,
	[report_fname_map] [varchar](max) NULL,
	[query] [varchar](max) NULL,
	[db] [varchar](100) NULL,
	[function] [varchar](255) NULL,
	[tran_date_col_name] [char](50) NULL,
	[source] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reports_queue]    Script Date: 18-03-2020 16:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reports_queue](
	[id] [int] IDENTITY(27,1) NOT NULL,
	[reference_id] [varchar](10) NOT NULL,
	[requested_by] [varchar](100) NOT NULL,
	[source] [varchar](255) NULL,
	[filename] [varchar](100) NOT NULL,
	[status] [varchar](100) NOT NULL,
	[requested_date] [datetime2](0) NOT NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reports_queue_28_01]    Script Date: 18-03-2020 16:12:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reports_queue_28_01](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reference_id] [varchar](10) NOT NULL,
	[requested_by] [varchar](100) NOT NULL,
	[filename] [varchar](100) NOT NULL,
	[status] [varchar](100) NOT NULL,
	[requested_date] [datetime2](0) NOT NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[reports_queue] ON 

INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (1, N'9028B82C58', N'admin', N'Facebook', N'902-11022020095809', N'Download', CAST(N'2020-02-11T09:58:09.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (2, N'4B4A64D391', N'admin', N'Facebook', N'4B4-11022020095820', N'Download', CAST(N'2020-02-11T09:58:20.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (3, N'5A7D8646FD', N'admin', N'Facebook', N'5A7-11022020095832', N'Download', CAST(N'2020-02-11T09:58:32.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (4, N'3CB95F6E81', N'admin', N'IDS', N'3CB-11022020095952', N'Download', CAST(N'2020-02-11T09:59:52.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (5, N'017BB951EF', N'admin', N'IDS', N'017-11022020100015', N'Download', CAST(N'2020-02-11T10:00:15.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (6, N'4760694E7D', N'admin', N'IDS', N'476-11022020100054', N'Download', CAST(N'2020-02-11T10:00:54.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (7, N'CDBBA94A9C', N'admin', N'Bloomberg', N'CDB-11022020100117', N'Download', CAST(N'2020-02-11T10:01:17.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (8, N'866B7BD9C8', N'admin', N'Bloomberg', N'866-11022020100136', N'Download', CAST(N'2020-02-11T10:01:36.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (9, N'C22B7F1F02', N'admin', N'Bloomberg', N'C22-11022020100157', N'Download', CAST(N'2020-02-11T10:01:57.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (10, N'EBA49B51C9', N'admin', N'Stratasys', N'EBA-11022020100215', N'Download', CAST(N'2020-02-11T10:02:15.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (11, N'63BD18DBD4', N'admin', N'Stratasys', N'63B-11022020100231', N'Download', CAST(N'2020-02-11T10:02:31.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (12, N'E762E52495', N'admin', N'Stratasys', N'E76-11022020100245', N'Download', CAST(N'2020-02-11T10:02:45.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (13, N'E77B43CC8F', N'admin', N'RII', N'E77-11022020100300', N'Download', CAST(N'2020-02-11T10:03:00.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (14, N'0AD46DA06C', N'admin', N'RII', N'0AD-11022020100314', N'Download', CAST(N'2020-02-11T10:03:14.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (15, N'0FCA94AC08', N'admin', N'RII', N'0FC-11022020100330', N'Download', CAST(N'2020-02-11T10:03:30.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (16, N'611984E43E', N'admin', N'Netgear', N'611-11022020100352', N'Download', CAST(N'2020-02-11T10:03:53.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (17, N'86EC560EB9', N'admin', N'Netgear', N'86E-11022020100410', N'Download', CAST(N'2020-02-11T10:04:10.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (18, N'2EDDCCEBAD', N'admin', N'Netgear', N'2ED-11022020100429', N'Download', CAST(N'2020-02-11T10:04:29.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (19, N'53257F1AC9', N'admin', N'Azul', N'532-11022020100448', N'Download', CAST(N'2020-02-11T10:04:48.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (20, N'A45C6AA426', N'admin', N'Azul', N'A45-11022020100508', N'Download', CAST(N'2020-02-11T10:05:08.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (21, N'457C37989E', N'admin', N'Azul', N'457-11022020100522', N'Download', CAST(N'2020-02-11T10:05:22.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-11' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (22, N'A80382BE93', N'admin', N'IDS', N'A80-13022020061337', N'Download', CAST(N'2020-02-13T06:13:37.0000000' AS DateTime2), CAST(N'2020-02-05' AS Date), CAST(N'2020-02-07' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (23, N'94AEB82BAD', N'admin', N'Netgear', N'94A-14022020104110', N'Download', CAST(N'2020-02-14T10:41:10.0000000' AS DateTime2), CAST(N'2020-02-12' AS Date), CAST(N'2020-02-14' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (24, N'E1D29AE4C7', N'admin', N'Netgear', N'E1D-14022020105429', N'Download', CAST(N'2020-02-14T10:54:29.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-14' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (25, N'8028BFAB07', N'admin', N'Facebook', N'802-17022020122144', N'Download', CAST(N'2020-02-17T12:21:45.0000000' AS DateTime2), CAST(N'2020-02-01' AS Date), CAST(N'2020-02-17' AS Date))
INSERT [dbo].[reports_queue] ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES (26, N'A3D51135AA', N'admin', N'Facebook', N'A3D-18022020081055', N'Download', CAST(N'2020-02-18T08:10:55.0000000' AS DateTime2), CAST(N'2020-02-10' AS Date), CAST(N'2020-02-12' AS Date))
SET IDENTITY_INSERT [dbo].[reports_queue] OFF
ALTER TABLE [dbo].[report_types] ADD  DEFAULT (NULL) FOR [db]
GO
ALTER TABLE [dbo].[report_types] ADD  DEFAULT (NULL) FOR [function]
GO
ALTER TABLE [dbo].[report_types] ADD  DEFAULT (NULL) FOR [tran_date_col_name]
GO
ALTER TABLE [dbo].[report_types] ADD  DEFAULT (NULL) FOR [source]
GO
ALTER TABLE [dbo].[report_types_28_01] ADD  DEFAULT (NULL) FOR [db]
GO
ALTER TABLE [dbo].[report_types_28_01] ADD  DEFAULT (NULL) FOR [function]
GO
ALTER TABLE [dbo].[report_types_28_01] ADD  DEFAULT (NULL) FOR [tran_date_col_name]
GO
ALTER TABLE [dbo].[report_types_config] ADD  DEFAULT (NULL) FOR [db]
GO
ALTER TABLE [dbo].[report_types_config] ADD  DEFAULT (NULL) FOR [function]
GO
ALTER TABLE [dbo].[report_types_config] ADD  DEFAULT (NULL) FOR [tran_date_col_name]
GO
ALTER TABLE [dbo].[report_types_config] ADD  DEFAULT (NULL) FOR [source]
GO
ALTER TABLE [dbo].[reports_queue] ADD  DEFAULT (NULL) FOR [source]
GO
ALTER TABLE [dbo].[reports_queue] ADD  DEFAULT (getdate()) FOR [requested_date]
GO
ALTER TABLE [dbo].[reports_queue] ADD  DEFAULT (NULL) FOR [start_date]
GO
ALTER TABLE [dbo].[reports_queue] ADD  DEFAULT (NULL) FOR [end_date]
GO
ALTER TABLE [dbo].[reports_queue_28_01] ADD  DEFAULT (getdate()) FOR [requested_date]
GO
ALTER TABLE [dbo].[reports_queue_28_01] ADD  DEFAULT (NULL) FOR [start_date]
GO
ALTER TABLE [dbo].[reports_queue_28_01] ADD  DEFAULT (NULL) FOR [end_date]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_reports] SET  READ_WRITE 
GO
