USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_fork_config]    Script Date: 18-03-2020 15:57:23 ******/
CREATE DATABASE [deloitte.acelive.ai_fork_config]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_fork_config', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_fork_config.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_fork_config_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_fork_config_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_fork_config].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_fork_config', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_fork_config]
GO
/****** Object:  Table [dbo].[fork_config]    Script Date: 18-03-2020 15:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fork_config](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[button_id] [int] NOT NULL,
	[fork_type] [varchar](100) NOT NULL,
	[fork_ref_value] [varchar](100) NOT NULL,
	[branch_to_queue] [int] NOT NULL,
	[freeze] [smallint] NOT NULL,
	[unfreeze_queue] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[fork_config] ADD  DEFAULT ('0') FOR [freeze]
GO
ALTER TABLE [dbo].[fork_config] ADD  DEFAULT (NULL) FOR [unfreeze_queue]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_fork_config] SET  READ_WRITE 
GO
