USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_merge_table]    Script Date: 18-03-2020 16:06:02 ******/
CREATE DATABASE [deloitte.acelive.ai_merge_table]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_merge_table', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_merge_table.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_merge_table_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_merge_table_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_merge_table].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_merge_table', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_merge_table]
GO
/****** Object:  Table [dbo].[merge_table_config]    Script Date: 18-03-2020 16:06:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_table_config](
	[id] [int] IDENTITY(3,1) NOT NULL,
	[button_id] [int] NOT NULL,
	[source_type] [varchar](100) NOT NULL,
	[source_config] [varchar](max) NOT NULL,
	[source_columns] [varchar](max) NULL,
	[join_on] [varchar](255) NOT NULL,
	[join_type] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[merge_table_config] ON 

INSERT [dbo].[merge_table_config] ([id], [button_id], [source_type], [source_config], [source_columns], [join_on], [join_type]) VALUES (1, 12, N'db', N'{"database": "external", "table": "source"}', N'B,C,D,E,case_id', N'Case ID,case_id', N'inner')
INSERT [dbo].[merge_table_config] ([id], [button_id], [source_type], [source_config], [source_columns], [join_on], [join_type]) VALUES (2, 12, N'db', N'{"database": "external", "table": "source_1"}', N'G,H,unique ID', N'Case ID,unique ID', N'right')
SET IDENTITY_INSERT [dbo].[merge_table_config] OFF
ALTER TABLE [dbo].[merge_table_config] ADD  DEFAULT ('left') FOR [join_type]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_merge_table] SET  READ_WRITE 
GO
