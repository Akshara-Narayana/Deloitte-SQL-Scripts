USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_api_config]    Script Date: 18-03-2020 15:42:14 ******/
CREATE DATABASE [deloitte.acelive.ai_api_config]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_api_config', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_api_config.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_api_config_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_api_config_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_api_config].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_api_config', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_api_config]
GO
/****** Object:  Table [dbo].[api]    Script Date: 18-03-2020 15:42:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[api](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [varchar](255) NULL,
	[api_type] [varchar](100) NOT NULL,
	[base_url] [varchar](255) NOT NULL,
	[method] [varchar](255) NOT NULL,
	[parameters] [varchar](max) NULL,
	[auth_type] [varchar](100) NULL,
	[auth_params] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[api] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[api] ADD  DEFAULT (NULL) FOR [auth_type]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_api_config] SET  READ_WRITE 
GO
