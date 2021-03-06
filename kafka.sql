USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_kafka]    Script Date: 18-03-2020 16:04:36 ******/
CREATE DATABASE [deloitte.acelive.ai_kafka]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_kafka', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_kafka.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_kafka_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_kafka_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_kafka].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_kafka', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_kafka]
GO
/****** Object:  Table [dbo].[grouped_message_flow]    Script Date: 18-03-2020 16:04:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grouped_message_flow](
	[id] [int] IDENTITY(60,1) NOT NULL,
	[listen_to_topic] [varchar](100) NULL,
	[send_to_topic] [varchar](100) NULL,
	[message_group] [varchar](100) NOT NULL,
	[static_data] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[message_flow]    Script Date: 18-03-2020 16:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[message_flow](
	[id] [int] IDENTITY(18,1) NOT NULL,
	[listen_to_topic] [varchar](50) NULL,
	[send_to_topic] [varchar](50) NULL,
	[workflow] [int] NOT NULL,
	[static_data] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[grouped_message_flow] ON 

INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (23, N'save_changes', N'run_business_rule', N'Approve1', N'{"stage" : ["duplicate"], "next_id":59}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (24, N'save_changes', N'run_business_rule', N'On Hold', N'{"stage" : ["hold"], "next_id": 55}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (25, N'save_changes', N'run_business_rule', N'Reject', N'{"stage" : ["reject"], "next_id": 56}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (26, N'save_changes', N'update_queue', N'Reassign', NULL)
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (29, N'save_changes', N'update_queue', N'Dismiss', NULL)
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (30, N'save_changes', N'update_queue', N'Grant', NULL)
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (31, N'save_changes', NULL, N'Save', NULL)
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (32, N'show_decision_tree', NULL, N'Decision Tree', N'')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (37, N'save_changes', N'run_business_rule', N'Confirm', N'{"stage" : ["calculation"], "next_id":38}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (38, N'run_business_rule', N'run_business_rule', N'Confirm', N'{"stage" : ["queue_movement"], "next_id": 39}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (39, N'run_business_rule', N'process_time', N'Confirm', N'')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (41, N'save_changes', N'update_queue', N'Approve2', NULL)
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (45, N'save_changes', N'run_business_rule', N'Apply', N'{"stage" : ["duplicate"], "next_id":58}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (46, N'run_business_rule', N'run_business_rule', N'Apply', N'{"stage" : ["validation"], "next_id":47}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (47, N'run_business_rule', N'run_business_rule', N'Apply', N'{"stage" : ["calculation"], "next_id":48}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (48, N'run_business_rule', N'run_business_rule', N'Apply', N'{"stage" : ["queue_movement"], "next_id":49}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (49, N'run_business_rule', NULL, N'Apply', NULL)
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (50, N'run_business_rule', N'run_business_rule', N'Approve1', N'{"stage" : ["validation"],"next_id":51}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (51, N'run_business_rule', N'run_business_rule', N'Approve1', N'{"stage" : ["calculation"],"next_id":52}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (52, N'run_business_rule', N'run_business_rule', N'Approve1', N'{"stage" : ["queue_movement"],"next_id":53}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (53, N'run_business_rule', NULL, N'Approve1', NULL)
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (55, N'run_business_rule', N'update_queue', N'On Hold', NULL)
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (56, N'run_business_rule', N'update_queue', N'Reject', NULL)
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (57, N'update_queue', NULL, N'Approve2', NULL)
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (58, N'run_business_rule', N'run_business_rule', N'Apply', N'{"stage" : ["regex"], "next_id":46}')
INSERT [dbo].[grouped_message_flow] ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES (59, N'run_business_rule', N'run_business_rule', N'Approve1', N'{"stage" : ["regex"],"next_id":50}')
SET IDENTITY_INSERT [dbo].[grouped_message_flow] OFF
SET IDENTITY_INSERT [dbo].[message_flow] ON 

INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (1, N'folder_monitor', N'ocr', 0, NULL)
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (2, N'ocr', N'detection', 0, NULL)
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (3, N'detection', N'extract', 0, NULL)
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (4, N'table_extract', N'run_business_rule', 0, N'{"stage" : ["proforma"], "next_id":17}')
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (5, N'clustering', N'extract', 0, NULL)
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (6, N'train', N'run_business_rule', 0, N'{"stage" : ["proforma"], "next_id":17}')
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (8, N'run_business_rule', N'run_business_rule', 0, N'{"stage" : ["duplicate"], "next_id":9}')
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (9, N'run_business_rule', N'run_business_rule', 0, N'{"stage" : ["validation"], "next_id":10}')
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (10, N'run_business_rule', N'run_business_rule', 0, N'{"stage" : ["calculation"], "next_id":11}')
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (11, N'run_business_rule', N'run_business_rule', 0, N'{"stage" : ["new"], "next_id":12}')
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (12, N'run_business_rule', N'run_business_rule', 0, N'{"stage" : ["queue_movement"],"next_id":14}')
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (14, N'run_business_rule', NULL, 0, NULL)
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (16, N'extract', N'table_extract', 0, N'')
INSERT [dbo].[message_flow] ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES (17, N'run_business_rule', N'run_business_rule', 0, N'{"stage" : ["regex"], "next_id":8}')
SET IDENTITY_INSERT [dbo].[message_flow] OFF
ALTER TABLE [dbo].[grouped_message_flow] ADD  DEFAULT (NULL) FOR [listen_to_topic]
GO
ALTER TABLE [dbo].[grouped_message_flow] ADD  DEFAULT (NULL) FOR [send_to_topic]
GO
ALTER TABLE [dbo].[grouped_message_flow] ADD  DEFAULT (NULL) FOR [static_data]
GO
ALTER TABLE [dbo].[message_flow] ADD  DEFAULT (NULL) FOR [listen_to_topic]
GO
ALTER TABLE [dbo].[message_flow] ADD  DEFAULT (NULL) FOR [send_to_topic]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_kafka] SET  READ_WRITE 
GO
