USE [master]
GO

/****** Object:  Database [PIZZA]    Script Date: 20/12/2018 11:17:06 ******/
CREATE DATABASE [PIZZA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PIZZA', FILENAME = N'H:\SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\PIZZA.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PIZZA_log', FILENAME = N'H:\SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\PIZZA_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [PIZZA] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PIZZA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [PIZZA] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [PIZZA] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [PIZZA] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [PIZZA] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [PIZZA] SET ARITHABORT OFF 
GO

ALTER DATABASE [PIZZA] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [PIZZA] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [PIZZA] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [PIZZA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [PIZZA] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [PIZZA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [PIZZA] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [PIZZA] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [PIZZA] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [PIZZA] SET  DISABLE_BROKER 
GO

ALTER DATABASE [PIZZA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [PIZZA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [PIZZA] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [PIZZA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [PIZZA] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [PIZZA] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [PIZZA] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [PIZZA] SET RECOVERY FULL 
GO

ALTER DATABASE [PIZZA] SET  MULTI_USER 
GO

ALTER DATABASE [PIZZA] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [PIZZA] SET DB_CHAINING OFF 
GO

ALTER DATABASE [PIZZA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [PIZZA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [PIZZA] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [PIZZA] SET  READ_WRITE 
GO
