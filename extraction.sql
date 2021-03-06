USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_extraction]    Script Date: 18-03-2020 15:54:04 ******/
CREATE DATABASE [deloitte.acelive.ai_extraction]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_extraction', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_extraction.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_extraction_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_extraction_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_extraction].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_extraction', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET QUERY_STORE = OFF
GO
ALTER DATABASE [deloitte.acelive.ai_extraction] SET  READ_WRITE 
GO
