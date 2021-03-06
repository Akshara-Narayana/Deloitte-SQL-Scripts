USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_file_manager]    Script Date: 18-03-2020 15:55:45 ******/
CREATE DATABASE [deloitte.acelive.ai_file_manager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_file_manager', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_file_manager.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_file_manager_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_file_manager_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_file_manager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_file_manager', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_file_manager]
GO
/****** Object:  Table [dbo].[file_manager]    Script Date: 18-03-2020 15:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[file_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[case_id] [varchar](100) NOT NULL,
	[file_name] [varchar](255) NOT NULL,
	[folder_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[folder_manager]    Script Date: 18-03-2020 15:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[folder_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[unique_key] [varchar](100) NOT NULL,
	[folder_name] [varchar](255) NOT NULL,
	[parent_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[folder_manager] ADD  DEFAULT (NULL) FOR [parent_id]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_file_manager] SET  READ_WRITE 
GO
