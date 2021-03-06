USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_stats]    Script Date: 18-03-2020 16:14:16 ******/
CREATE DATABASE [deloitte.acelive.ai_stats]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_stats', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_stats.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_stats_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_stats_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_stats].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_stats', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_stats]
GO
/****** Object:  Table [dbo].[active_stats]    Script Date: 18-03-2020 16:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[active_stats](
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[audit]    Script Date: 18-03-2020 16:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[audit](
	[id] [int] IDENTITY(1258,1) NOT NULL,
	[updated_date] [datetime2](0) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[last_modified_by] [varchar](255) NULL,
	[table_name] [varchar](255) NOT NULL,
	[reference_column] [varchar](255) NOT NULL,
	[reference_value] [varchar](255) NOT NULL,
	[changed_data] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Closed_Accounts_Source]    Script Date: 18-03-2020 16:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Closed_Accounts_Source](
	[Account Number] [varchar](255) NOT NULL,
	[Customer Id] [varchar](255) NOT NULL,
	[Acc Closed Date] [varchar](255) NOT NULL,
	[Acc Open Date] [varchar](255) NOT NULL,
	[Acc Short Date] [varchar](255) NOT NULL,
	[Currency] [varchar](255) NOT NULL,
	[Cust Short Name] [varchar](255) NOT NULL,
	[Product Name] [varchar](255) NOT NULL,
	[Reason Of Closore] [varchar](255) NOT NULL,
	[System Code] [varchar](255) NOT NULL,
	[GHO] [varchar](255) NOT NULL,
	[Full Name] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[ID Type] [varchar](255) NOT NULL,
	[ID No] [varchar](255) NOT NULL,
	[Date Of Contact] [varchar](255) NOT NULL,
	[Pan] [varchar](255) NOT NULL,
	[Acc Office Code] [varchar](255) NOT NULL,
	[Soleid] [varchar](255) NOT NULL,
	[Dob Doi] [varchar](255) NOT NULL,
	[Address Id] [varchar](255) NOT NULL,
	[Address Id 1] [varchar](255) NOT NULL,
	[Address Id 2] [varchar](255) NOT NULL,
	[Address Id 3] [varchar](255) NOT NULL,
	[Address Id 4] [varchar](255) NOT NULL,
	[Address Id 5] [varchar](255) NOT NULL,
	[Postal Code] [varchar](255) NOT NULL,
	[Tel No] [varchar](255) NOT NULL,
	[Tel No2] [varchar](255) NOT NULL,
	[Mobile No] [varchar](255) NOT NULL,
	[Int Add] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoices_uploaded]    Script Date: 18-03-2020 16:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoices_uploaded](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[no_of_files] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[queue_time]    Script Date: 18-03-2020 16:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[queue_time](
	[id] [int] IDENTITY(24,1) NOT NULL,
	[date] [date] NOT NULL,
	[no_of_files] [int] NOT NULL,
	[state] [varchar](255) NOT NULL,
	[aht_in_sec] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[state_stats]    Script Date: 18-03-2020 16:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[state_stats](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[state] [varchar](255) NOT NULL,
	[no_of_files] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stats_master]    Script Date: 18-03-2020 16:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stats_master](
	[id] [int] IDENTITY(23,1) NOT NULL,
	[header] [varchar](255) NOT NULL,
	[card_type] [varchar](255) NOT NULL,
	[chart_type] [varchar](255) NULL,
	[title] [varchar](255) NULL,
	[route] [varchar](255) NOT NULL,
	[workflow] [int] NULL,
	[front_flip] [varchar](255) NULL,
	[back_flip] [varchar](255) NULL,
	[X] [int] NOT NULL,
	[Y] [int] NOT NULL,
	[refresh] [varchar](255) NOT NULL,
	[flip] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[active_stats] ON 

INSERT [dbo].[active_stats] ([id]) VALUES (1)
INSERT [dbo].[active_stats] ([id]) VALUES (2)
INSERT [dbo].[active_stats] ([id]) VALUES (3)
INSERT [dbo].[active_stats] ([id]) VALUES (22)
SET IDENTITY_INSERT [dbo].[active_stats] OFF
SET IDENTITY_INSERT [dbo].[stats_master] ON 

INSERT [dbo].[stats_master] ([id], [header], [card_type], [chart_type], [title], [route], [workflow], [front_flip], [back_flip], [X], [Y], [refresh], [flip]) VALUES (1, N'Volume Insights card', N'chart_type_cards', NULL, NULL, N'volume_insights', NULL, NULL, NULL, 2, 2, N'auto', 0)
INSERT [dbo].[stats_master] ([id], [header], [card_type], [chart_type], [title], [route], [workflow], [front_flip], [back_flip], [X], [Y], [refresh], [flip]) VALUES (2, N'In-progress Cases Card', N'chart_type_cards', NULL, NULL, N'in_progress_cases_del', NULL, NULL, NULL, 2, 2, N'auto', 0)
INSERT [dbo].[stats_master] ([id], [header], [card_type], [chart_type], [title], [route], [workflow], [front_flip], [back_flip], [X], [Y], [refresh], [flip]) VALUES (3, N'Automation Accuracy Metrics', N'chart_type_cards', NULL, NULL, N'automation_accuracy_metrics_del', NULL, NULL, NULL, 2, 2, N'auto', 0)
INSERT [dbo].[stats_master] ([id], [header], [card_type], [chart_type], [title], [route], [workflow], [front_flip], [back_flip], [X], [Y], [refresh], [flip]) VALUES (22, N'Average Invoice Ageing(Hrs) by Client', N'chart_type_cards', NULL, NULL, N'time_spent_by_invoice', NULL, NULL, NULL, 2, 2, N'auto', 0)
SET IDENTITY_INSERT [dbo].[stats_master] OFF
ALTER TABLE [dbo].[audit] ADD  DEFAULT (getdate()) FOR [updated_date]
GO
ALTER TABLE [dbo].[audit] ADD  DEFAULT ('update') FOR [type]
GO
ALTER TABLE [dbo].[audit] ADD  DEFAULT (NULL) FOR [last_modified_by]
GO
ALTER TABLE [dbo].[state_stats] ADD  DEFAULT ('0') FOR [no_of_files]
GO
ALTER TABLE [dbo].[stats_master] ADD  DEFAULT (NULL) FOR [chart_type]
GO
ALTER TABLE [dbo].[stats_master] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[stats_master] ADD  DEFAULT (NULL) FOR [workflow]
GO
ALTER TABLE [dbo].[stats_master] ADD  DEFAULT (NULL) FOR [front_flip]
GO
ALTER TABLE [dbo].[stats_master] ADD  DEFAULT (NULL) FOR [back_flip]
GO
ALTER TABLE [dbo].[stats_master] ADD  DEFAULT ('1') FOR [X]
GO
ALTER TABLE [dbo].[stats_master] ADD  DEFAULT ('1') FOR [Y]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_stats] SET  READ_WRITE 
GO
