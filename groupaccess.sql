USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_group_access]    Script Date: 18-03-2020 15:58:59 ******/
CREATE DATABASE [deloitte.acelive.ai_group_access]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_group_access', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_group_access.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_group_access_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_group_access_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_group_access].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_group_access', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_group_access]
GO
/****** Object:  Table [dbo].[active_directory]    Script Date: 18-03-2020 15:59:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[active_directory](
	[id] [int] IDENTITY(54,1) NOT NULL,
	[First Name] [varchar](255) NULL,
	[Last Name] [varchar](255) NOT NULL,
	[User Email] [varchar](255) NULL,
	[role] [varchar](255) NOT NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](max) NULL,
	[status] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[app_access]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[app_access](
	[id] [int] IDENTITY(4,1) NOT NULL,
	[app_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[app_definition]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[app_definition](
	[id] [int] IDENTITY(3,1) NOT NULL,
	[display_name] [varchar](255) NOT NULL,
	[unique_name] [varchar](255) NOT NULL,
	[icon] [varchar](255) NOT NULL,
	[redirect_url] [varchar](255) NOT NULL,
	[app_order] [varchar](255) NOT NULL,
	[external] [smallint] NOT NULL,
	[parameters] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attribute_dropdown_definition]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attribute_dropdown_definition](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[attribute_id] [int] NOT NULL,
	[parent_attribute_value] [varchar](255) NULL,
	[value] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[field_definition]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[field_definition](
	[id] [int] IDENTITY(8,1) NOT NULL,
	[display_name] [varchar](255) NOT NULL,
	[unique_name] [varchar](70) NOT NULL,
	[parent] [varchar](255) NULL,
	[editable] [smallint] NOT NULL,
	[type] [varchar](255) NOT NULL,
	[pattern] [varchar](255) NOT NULL,
	[mandatory] [smallint] NOT NULL,
	[status] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_definition]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_definition](
	[id] [int] IDENTITY(4,1) NOT NULL,
	[group_name] [varchar](255) NOT NULL,
	[group_definition] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[live_sessions]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[live_sessions](
	[id] [int] IDENTITY(13,1) NOT NULL,
	[user] [varchar](255) NOT NULL,
	[session_id] [varchar](255) NOT NULL,
	[status] [varchar](255) NOT NULL,
	[login] [datetime2](0) NOT NULL,
	[logout] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[organisation_attributes]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organisation_attributes](
	[id] [int] IDENTITY(3,1) NOT NULL,
	[source] [varchar](255) NOT NULL,
	[attribute] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[organisation_hierarchy]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[organisation_hierarchy](
	[id] [int] IDENTITY(3,1) NOT NULL,
	[h_group] [varchar](255) NOT NULL,
	[h_order] [varchar](1000) NOT NULL,
	[parent_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[queue_access]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[queue_access](
	[id] [int] IDENTITY(25,1) NOT NULL,
	[queue_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[queue_definition]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[queue_definition](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[access] [varchar](255) NOT NULL,
	[icon] [varchar](50) NOT NULL,
	[timer] [smallint] NOT NULL,
	[type] [varchar](255) NOT NULL,
	[level] [int] NOT NULL,
	[parent] [varchar](255) NULL,
	[child] [varchar](255) NULL,
	[fields_disable] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reports_access]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reports_access](
	[id] [int] IDENTITY(3,1) NOT NULL,
	[reports_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stats_access]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stats_access](
	[id] [int] IDENTITY(5,1) NOT NULL,
	[stats_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stats_access_20_01]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stats_access_20_01](
	[id] [int] IDENTITY(42,1) NOT NULL,
	[stats_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_organisation_mapping]    Script Date: 18-03-2020 15:59:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_organisation_mapping](
	[id] [int] IDENTITY(39,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[sequence_id] [int] NOT NULL,
	[type] [varchar](255) NOT NULL,
	[organisation_attribute] [int] NOT NULL,
	[value] [varchar](255) NOT NULL,
	[multi_check_group] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[active_directory] ON 

INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (36, N'Admin', N'', N'mahendra.vankadara@algonox.com', N'', N'admin', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1)
INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (37, N'Invoice Processor', N'', N'mahendra.vankadara@algonox.com', N'', N'invoice_processor', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1)
INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (38, N'Invoice Auditor', N'', N'mahendra.vankadara@algonox.com', N'', N'invoice_auditor', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1)
INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (40, N'Checker1', N' ', N'testing_team@algonox.com ', N'', N'Checker1', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1)
INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (46, N'Invoice Processor 2', N'', N'mahendra.vankadara@algonox.com', N'', N'invoice_processor_2', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1)
INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (47, N'Invoice_Processor', N'Proc', N'abc@gmail.com', N'', N'inv_proc', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1)
INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (48, N'S', N't', N'a', N'', N'test2', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1)
INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (49, N'S', N't', N'a', N'', N'test2', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1)
INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (50, N'test1', N'test1', N'test1', N'', N'test1', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1)
INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (51, N'jl', N'h', N'hj', N'', N'g', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1)
INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (52, N'anurag', N'anurag', N'anurag123@gmail.com', N'', N'anurag123', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1)
INSERT [dbo].[active_directory] ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES (53, N'Amith', N'Lakkakula', N'amith.lakkakula@algnonox.com', N'', N'amith531', N'03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1)
SET IDENTITY_INSERT [dbo].[active_directory] OFF
SET IDENTITY_INSERT [dbo].[app_access] ON 

INSERT [dbo].[app_access] ([id], [app_id], [group_id]) VALUES (2, 2, 3)
INSERT [dbo].[app_access] ([id], [app_id], [group_id]) VALUES (3, 1, 3)
SET IDENTITY_INSERT [dbo].[app_access] OFF
SET IDENTITY_INSERT [dbo].[app_definition] ON 

INSERT [dbo].[app_definition] ([id], [display_name], [unique_name], [icon], [redirect_url], [app_order], [external], [parameters]) VALUES (1, N'User Management', N'user_management', N'', N'usermanagement', N'1', 0, NULL)
INSERT [dbo].[app_definition] ([id], [display_name], [unique_name], [icon], [redirect_url], [app_order], [external], [parameters]) VALUES (2, N'Master Data', N'master_upload', N'', N'masterdata', N'2', 0, NULL)
SET IDENTITY_INSERT [dbo].[app_definition] OFF
SET IDENTITY_INSERT [dbo].[attribute_dropdown_definition] ON 

INSERT [dbo].[attribute_dropdown_definition] ([id], [attribute_id], [parent_attribute_value], [value]) VALUES (1, 1, NULL, N'Maker')
INSERT [dbo].[attribute_dropdown_definition] ([id], [attribute_id], [parent_attribute_value], [value]) VALUES (2, 1, NULL, N'Checker')
INSERT [dbo].[attribute_dropdown_definition] ([id], [attribute_id], [parent_attribute_value], [value]) VALUES (3, 1, NULL, N'Master')
INSERT [dbo].[attribute_dropdown_definition] ([id], [attribute_id], [parent_attribute_value], [value]) VALUES (4, 2, NULL, N'Facebook')
INSERT [dbo].[attribute_dropdown_definition] ([id], [attribute_id], [parent_attribute_value], [value]) VALUES (5, 2, NULL, N'Bloomberg')
INSERT [dbo].[attribute_dropdown_definition] ([id], [attribute_id], [parent_attribute_value], [value]) VALUES (6, 2, NULL, N'Stratasys')
INSERT [dbo].[attribute_dropdown_definition] ([id], [attribute_id], [parent_attribute_value], [value]) VALUES (7, 2, NULL, N'RII')
INSERT [dbo].[attribute_dropdown_definition] ([id], [attribute_id], [parent_attribute_value], [value]) VALUES (8, 2, NULL, N'Netgear')
INSERT [dbo].[attribute_dropdown_definition] ([id], [attribute_id], [parent_attribute_value], [value]) VALUES (9, 2, NULL, N'Azul')
SET IDENTITY_INSERT [dbo].[attribute_dropdown_definition] OFF
SET IDENTITY_INSERT [dbo].[field_definition] ON 

INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [parent], [editable], [type], [pattern], [mandatory], [status]) VALUES (1, N'First Name', N'First Name', NULL, 0, N'text', N'', 1, 1)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [parent], [editable], [type], [pattern], [mandatory], [status]) VALUES (2, N'User Email', N'User Email', NULL, 0, N'text', N'', 1, 1)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [parent], [editable], [type], [pattern], [mandatory], [status]) VALUES (3, N'Username', N'username', NULL, 0, N'text', N'', 1, 1)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [parent], [editable], [type], [pattern], [mandatory], [status]) VALUES (4, N'Password', N'password', NULL, 0, N'text', N'', 1, 1)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [parent], [editable], [type], [pattern], [mandatory], [status]) VALUES (5, N'Last Name', N'Last Name', NULL, 0, N'text', N'', 1, 1)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [parent], [editable], [type], [pattern], [mandatory], [status]) VALUES (6, N'Role', N'role', NULL, 0, N'dropdown', N'', 1, 1)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [parent], [editable], [type], [pattern], [mandatory], [status]) VALUES (7, N'Client Name', N'source_of_invoice', NULL, 0, N'dropdown', N'', 1, 1)
SET IDENTITY_INSERT [dbo].[field_definition] OFF
SET IDENTITY_INSERT [dbo].[group_definition] ON 

INSERT [dbo].[group_definition] ([id], [group_name], [group_definition]) VALUES (1, N'maker', N'{"role": "Maker"}')
INSERT [dbo].[group_definition] ([id], [group_name], [group_definition]) VALUES (2, N'checker', N'{"role": "Checker"}')
INSERT [dbo].[group_definition] ([id], [group_name], [group_definition]) VALUES (3, N'master', N'{"role": "Master"}')
SET IDENTITY_INSERT [dbo].[group_definition] OFF
SET IDENTITY_INSERT [dbo].[live_sessions] ON 

INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (1, N'Mahendra', N'S297938996', N'active', CAST(N'2019-11-22T10:16:02.0000000' AS DateTime2), CAST(N'2019-11-27T10:32:17.0000000' AS DateTime2))
INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (2, N'Master', N'S862339597', N'closed', CAST(N'2019-12-04T09:52:16.0000000' AS DateTime2), CAST(N'2020-02-04T09:10:31.0000000' AS DateTime2))
INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (3, N'Maker', N'S591728501', N'closed', CAST(N'2019-12-06T06:07:00.0000000' AS DateTime2), CAST(N'2020-02-04T06:12:33.0000000' AS DateTime2))
INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (4, N'Checker', N'S349721954', N'closed', CAST(N'2020-01-13T05:08:12.0000000' AS DateTime2), CAST(N'2020-02-04T06:13:46.0000000' AS DateTime2))
INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (5, N'Maker2', N'S745774476', N'closed', CAST(N'2020-01-28T08:26:29.0000000' AS DateTime2), CAST(N'2020-02-04T07:01:38.0000000' AS DateTime2))
INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (6, N'inv_proc', N'S644408872', N'active', CAST(N'2020-02-03T14:19:51.0000000' AS DateTime2), CAST(N'2020-02-04T06:08:36.0000000' AS DateTime2))
INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (7, N'admin', N'S520736469', N'closed', CAST(N'2020-02-04T07:04:43.0000000' AS DateTime2), CAST(N'2020-03-04T06:27:26.0000000' AS DateTime2))
INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (8, N'invoice_processor_2', N'S904903979', N'active', CAST(N'2020-02-04T07:14:18.0000000' AS DateTime2), CAST(N'2020-02-26T10:24:57.0000000' AS DateTime2))
INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (9, N'invoice_processor', N'S702626347', N'active', CAST(N'2020-02-04T09:13:12.0000000' AS DateTime2), CAST(N'2020-02-19T05:35:36.0000000' AS DateTime2))
INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (10, N'invoice_auditor', N'S876764166', N'closed', CAST(N'2020-02-05T18:30:31.0000000' AS DateTime2), CAST(N'2020-02-05T18:30:37.0000000' AS DateTime2))
INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (11, N'anurag123', N'S255453235', N'closed', CAST(N'2020-02-11T11:46:07.0000000' AS DateTime2), CAST(N'2020-02-11T14:22:30.0000000' AS DateTime2))
INSERT [dbo].[live_sessions] ([id], [user], [session_id], [status], [login], [logout]) VALUES (12, N'amith531', N'S835629239', N'closed', CAST(N'2020-02-12T07:54:21.0000000' AS DateTime2), CAST(N'2020-02-12T13:18:29.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[live_sessions] OFF
SET IDENTITY_INSERT [dbo].[organisation_attributes] ON 

INSERT [dbo].[organisation_attributes] ([id], [source], [attribute]) VALUES (1, N'user', N'role')
INSERT [dbo].[organisation_attributes] ([id], [source], [attribute]) VALUES (2, N'process_queue', N'source_of_invoice')
SET IDENTITY_INSERT [dbo].[organisation_attributes] OFF
SET IDENTITY_INSERT [dbo].[organisation_hierarchy] ON 

INSERT [dbo].[organisation_hierarchy] ([id], [h_group], [h_order], [parent_id]) VALUES (1, N'designation', N'role', 1)
INSERT [dbo].[organisation_hierarchy] ([id], [h_group], [h_order], [parent_id]) VALUES (2, N'client', N'source_of_invoice', 1)
SET IDENTITY_INSERT [dbo].[organisation_hierarchy] OFF
SET IDENTITY_INSERT [dbo].[queue_access] ON 

INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (1, 1, 3)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (2, 2, 3)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (3, 3, 3)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (4, 4, 3)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (5, 7, 3)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (6, 8, 3)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (7, 12, 3)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (8, 13, 3)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (9, 1, 2)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (11, 3, 2)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (12, 4, 2)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (13, 7, 2)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (15, 12, 2)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (16, 13, 2)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (17, 1, 1)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (18, 2, 1)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (20, 4, 1)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (21, 7, 1)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (22, 8, 1)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (23, 12, 1)
INSERT [dbo].[queue_access] ([id], [queue_id], [group_id]) VALUES (24, 13, 1)
SET IDENTITY_INSERT [dbo].[queue_access] OFF
SET IDENTITY_INSERT [dbo].[reports_access] ON 

INSERT [dbo].[reports_access] ([id], [reports_id], [group_id]) VALUES (1, 2, 1)
INSERT [dbo].[reports_access] ([id], [reports_id], [group_id]) VALUES (2, 4, 1)
SET IDENTITY_INSERT [dbo].[reports_access] OFF
SET IDENTITY_INSERT [dbo].[stats_access] ON 

INSERT [dbo].[stats_access] ([id], [stats_id], [group_id]) VALUES (1, 2, 3)
INSERT [dbo].[stats_access] ([id], [stats_id], [group_id]) VALUES (2, 1, 3)
INSERT [dbo].[stats_access] ([id], [stats_id], [group_id]) VALUES (3, 3, 3)
INSERT [dbo].[stats_access] ([id], [stats_id], [group_id]) VALUES (4, 22, 3)
SET IDENTITY_INSERT [dbo].[stats_access] OFF
SET IDENTITY_INSERT [dbo].[stats_access_20_01] ON 

INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (13, 5, 3)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (14, 6, 3)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (15, 8, 3)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (16, 7, 3)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (17, 9, 3)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (20, 12, 3)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (28, 5, 1)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (29, 6, 1)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (30, 8, 1)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (31, 7, 1)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (32, 9, 1)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (33, 12, 1)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (34, 5, 2)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (35, 6, 2)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (36, 8, 2)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (37, 7, 2)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (38, 9, 2)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (39, 18, 3)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (40, 18, 2)
INSERT [dbo].[stats_access_20_01] ([id], [stats_id], [group_id]) VALUES (41, 18, 1)
SET IDENTITY_INSERT [dbo].[stats_access_20_01] OFF
SET IDENTITY_INSERT [dbo].[user_organisation_mapping] ON 

INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (1, 36, 1, N'user', 1, N'Master', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (2, 37, 1, N'user', 1, N'Maker', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (5, 37, 1, N'case', 2, N'Facebook', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (6, 46, 1, N'user', 1, N'Maker', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (7, 46, 1, N'case', 2, N'IDS', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (8, 38, 1, N'user', 1, N'Checker', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (9, 40, 1, N'user', 1, N'Checker', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (12, 46, 1, N'case', 2, N'Facebook', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (13, 47, 1, N'user', 1, N'Maker', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (14, 47, 1, N'user', 2, N'Facebook', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (15, 48, 1, N'user', 1, N'Maker', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (16, 48, 1, N'user', 2, N'Facebook', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (17, 48, 1, N'user', 1, N'Checker', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (18, 48, 1, N'user', 2, N'Facebook', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (20, 52, 2, N'process_queue', 2, N'Facebook', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (22, 52, 2, N'process_queue', 2, N'Bloomberg', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (23, 52, 2, N'user', 1, N'Maker', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (24, 52, 1, N'process_queue', 2, N'Netgear', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (26, 52, 1, N'process_queue', 2, N'Stratasys', 2)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (27, 52, 1, N'user', 1, N'Checker', 2)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (28, 52, 2, N'process_queue', 2, N'RII', 2)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (29, 53, 1, N'user', 1, N'Maker', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (30, 53, 1, N'process_queue', 2, N'Facebook', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (31, 53, 2, N'user', 1, N'Maker', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (32, 53, 2, N'process_queue', 2, N'Bloomberg', 1)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (33, 53, 3, N'user', 1, N'Checker', 2)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (34, 53, 3, N'process_queue', 2, N'Stratasys', 2)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (35, 53, 4, N'user', 1, N'Checker', 2)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (36, 53, 4, N'process_queue', 2, N'RII', 2)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (37, 53, 5, N'user', 1, N'Checker', 2)
INSERT [dbo].[user_organisation_mapping] ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES (38, 53, 5, N'process_queue', 2, N'Netgear', 2)
SET IDENTITY_INSERT [dbo].[user_organisation_mapping] OFF
ALTER TABLE [dbo].[active_directory] ADD  DEFAULT (NULL) FOR [First Name]
GO
ALTER TABLE [dbo].[active_directory] ADD  DEFAULT (NULL) FOR [User Email]
GO
ALTER TABLE [dbo].[active_directory] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [dbo].[active_directory] ADD  DEFAULT ('1') FOR [status]
GO
ALTER TABLE [dbo].[app_definition] ADD  DEFAULT (NULL) FOR [parameters]
GO
ALTER TABLE [dbo].[attribute_dropdown_definition] ADD  DEFAULT (NULL) FOR [parent_attribute_value]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT (NULL) FOR [parent]
GO
ALTER TABLE [dbo].[live_sessions] ADD  DEFAULT (getdate()) FOR [login]
GO
ALTER TABLE [dbo].[live_sessions] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [logout]
GO
ALTER TABLE [dbo].[organisation_attributes] ADD  DEFAULT ('user') FOR [source]
GO
ALTER TABLE [dbo].[queue_definition] ADD  DEFAULT ('doc') FOR [icon]
GO
ALTER TABLE [dbo].[queue_definition] ADD  DEFAULT ('1') FOR [timer]
GO
ALTER TABLE [dbo].[queue_definition] ADD  DEFAULT ('field') FOR [type]
GO
ALTER TABLE [dbo].[queue_definition] ADD  DEFAULT (NULL) FOR [parent]
GO
ALTER TABLE [dbo].[queue_definition] ADD  DEFAULT (NULL) FOR [child]
GO
ALTER TABLE [dbo].[user_organisation_mapping] ADD  DEFAULT ('1') FOR [sequence_id]
GO
ALTER TABLE [dbo].[user_organisation_mapping] ADD  DEFAULT ('user') FOR [type]
GO
ALTER TABLE [dbo].[user_organisation_mapping] ADD  DEFAULT (NULL) FOR [multi_check_group]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_group_access] SET  READ_WRITE 
GO
