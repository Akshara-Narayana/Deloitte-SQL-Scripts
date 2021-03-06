USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_table_db]    Script Date: 18-03-2020 16:20:05 ******/
CREATE DATABASE [deloitte.acelive.ai_table_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_table_db', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_table_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_table_db_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_table_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_table_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_table_db', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_table_db]
GO
/****** Object:  Table [dbo].[table_info]    Script Date: 18-03-2020 16:20:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table_info](
	[id] [bigint] IDENTITY(21,1) NOT NULL,
	[template_name] [varchar](100) NULL,
	[method] [varchar](max) NULL,
	[table_no] [varchar](max) NULL,
	[table_name] [varchar](max) NULL,
	[header_check] [bigint] NULL,
	[footer_check] [bigint] NULL,
	[table_data] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[table_info] ON 

INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (2, N'test_abhi', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "", "del": "no", "alias": "", "ref": false}, "v2": {"label": "", "del": "no", "alias": "", "ref": false}, "v3": {"label": "", "del": "no", "alias": "", "ref": false}, "v4": {"label": "", "del": "no", "alias": "", "ref": false}, "v5": {"label": "", "del": "no", "alias": "", "ref": false}, "v6": {"label": "", "del": "no", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (3, N'Value Notes', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "Particulars", "del": "no", "alias": "", "ref": false}, "v2": {"label": "Amount (Rs)", "del": "no", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (4, N'Value Notes', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "Particulars", "del": "no", "alias": "", "ref": false}, "v2": {"label": "Amount (Rs)", "del": "no", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (5, N'test_abhishek', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "PARTICULARS", "del": "no", "alias": "", "ref": false}, "v2": {"label": "| SAC/ HSN Code", "del": "no", "alias": "", "ref": false}, "v3": {"label": "PERSON/QTY.", "del": "no", "alias": "", "ref": false}, "v4": {"label": "| DUTIES | RATE | AMOUNT", "del": "no", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (6, N'test_abhishek1', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "PARTICULARS", "del": "no", "alias": "", "ref": false}, "v2": {"label": "| SAC/ HSN Code", "del": "no", "alias": "", "ref": false}, "v3": {"label": "PERSON/QTY.", "del": "no", "alias": "", "ref": false}, "v4": {"label": "| DUTIES | RATE |", "del": "no", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (7, N'George P.Jhonson Evenet Marketing Private Limited', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "Item No", "del": "no", "alias": "item_quantity", "ref": false}, "v2": {"label": "Service Description", "del": "no", "alias": "item_description", "ref": false}, "v3": {"label": "SAC Code", "del": "yes", "alias": "", "ref": false}, "v4": {"label": "Taxable Value", "del": "yes", "alias": "", "ref": false}, "v5": {"label": "Amount Rs.", "del": "no", "alias": "line_amount", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (8, N'Orion Security Solution Private Limited', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "", "del": "yes", "alias": "", "ref": false}, "v2": {"label": "PARTICULARS", "del": "no", "alias": "item_description", "ref": false}, "v3": {"label": "SAC/ HSN Code", "del": "no", "alias": "", "ref": false}, "v4": {"label": "PERSON/QTY,", "del": "no", "alias": "item_quantity", "ref": false}, "v5": {"label": "I DUTIES I", "del": "yes", "alias": "", "ref": false}, "v6": {"label": "RATE", "del": "yes", "alias": "", "ref": false}, "v7": {"label": "| AMOUNT", "del": "no", "alias": "line_amount", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (9, N'sodexo svc india private limited', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "Description", "del": "no", "alias": "", "ref": false}, "v2": {"label": "Amount", "del": "no", "alias": "", "ref": false}, "v3": {"label": "", "del": "no", "alias": "", "ref": false}, "v4": {"label": "", "del": "no", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (10, N'Afoozo Pvt.Ltd.', N'', NULL, NULL, NULL, NULL, N'{}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (11, N'The Press Trust of India Limited', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "", "del": "yes", "alias": "", "ref": false}, "v2": {"label": "PARTICULARS", "del": "no", "alias": "", "ref": false}, "v3": {"label": "AMOUNT", "del": "no", "alias": "", "ref": false}, "v4": {"label": "", "del": "yes", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (12, N'RL RADIANT TRADEVEST PVT.LTD.', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "Description of Goods HSN/SAC SR.No.", "del": "no", "alias": "item_description", "ref": false}, "v2": {"label": "GST Rate", "del": "no", "alias": "item_quantity", "ref": false}, "v3": {"label": "Rate", "del": "no", "alias": "", "ref": true}, "v4": {"label": "Amount", "del": "no", "alias": "line_amount", "ref": false}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (13, N'Sher Sinha', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "", "del": "yes", "alias": "", "ref": false}, "v2": {"label": "", "del": "yes", "alias": "", "ref": false}, "v3": {"label": "DESCRIPTION", "del": "no", "alias": "", "ref": false}, "v4": {"label": "AMOUNT", "del": "no", "alias": "", "ref": false}, "v5": {"label": "DESCRIPTION OF WORK", "del": "no", "alias": "", "ref": false}, "v6": {"label": "", "del": "no", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (14, N'test_abhishek3', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "PARTICULARS", "del": "no", "alias": "", "ref": false}, "v2": {"label": "SAC/ HSN Code", "del": "no", "alias": "", "ref": false}, "v3": {"label": "PERSON/QTY,", "del": "no", "alias": "", "ref": false}, "v4": {"label": "I DUTIES I RATE | AMOUNT", "del": "no", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (15, N'RL RADIANT TRADEVEST PVT.LTD.', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "", "del": "no", "alias": "", "ref": false}, "v2": {"label": "", "del": "no", "alias": "", "ref": false}, "v3": {"label": "", "del": "no", "alias": "", "ref": false}, "v4": {"label": "", "del": "no", "alias": "", "ref": false}, "v5": {"label": "", "del": "no", "alias": "", "ref": false}, "v6": {"label": "", "del": "no", "alias": "", "ref": false}, "v7": {"label": "", "del": "no", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (16, N'Afoozo Pvt.Ltd', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "Sr", "del": "yes", "alias": "", "ref": false}, "v2": {"label": "Particulars of Service/ltems u2022", "del": "no", "alias": "", "ref": false}, "v3": {"label": "SAC Code", "del": "no", "alias": "", "ref": false}, "v4": {"label": "Amount (Rs.)", "del": "no", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (17, N'Sodexo-1', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "Description", "del": "no", "alias": "item_description", "ref": false}, "v2": {"label": "Amount", "del": "no", "alias": "line_amount", "ref": false}, "v3": {"label": "", "del": "no", "alias": "line_amount", "ref": false}, "v4": {"label": "", "del": "no", "alias": "", "ref": true}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (18, N'Shravas Technologies', N'', NULL, NULL, NULL, NULL, N'{"v1": {"label": "SI No. Particulars", "del": "no", "alias": "", "ref": true}, "v2": {"label": "", "del": "no", "alias": "", "ref": false}, "v3": {"label": "Amount", "del": "no", "alias": "", "ref": false}, "v4": {"label": "", "del": "no", "alias": "", "ref": false}}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (19, N'ABSC ENTERTAINMENT.', N'', NULL, NULL, NULL, NULL, N'{}')
INSERT [dbo].[table_info] ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES (20, N'ABSC ENTERTAINMENT.', N'', NULL, NULL, NULL, NULL, N'{}')
SET IDENTITY_INSERT [dbo].[table_info] OFF
ALTER TABLE [dbo].[table_info] ADD  DEFAULT (NULL) FOR [template_name]
GO
ALTER TABLE [dbo].[table_info] ADD  DEFAULT (NULL) FOR [header_check]
GO
ALTER TABLE [dbo].[table_info] ADD  DEFAULT (NULL) FOR [footer_check]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_table_db] SET  READ_WRITE 
GO
