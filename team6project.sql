USE [master]
GO
/****** Object:  Database [team6project]    Script Date: 2019/9/6 下午 01:22:50 ******/
CREATE DATABASE [team6project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'team6project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\team6project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'team6project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\team6project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [team6project] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [team6project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [team6project] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [team6project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [team6project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [team6project] SET ARITHABORT OFF 
GO
ALTER DATABASE [team6project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [team6project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [team6project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [team6project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [team6project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [team6project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [team6project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [team6project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [team6project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [team6project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [team6project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [team6project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [team6project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [team6project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [team6project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [team6project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [team6project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [team6project] SET RECOVERY FULL 
GO
ALTER DATABASE [team6project] SET  MULTI_USER 
GO
ALTER DATABASE [team6project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [team6project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [team6project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [team6project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [team6project] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'team6project', N'ON'
GO
ALTER DATABASE [team6project] SET QUERY_STORE = OFF
GO
USE [team6project]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [team6project]
GO
/****** Object:  Table [dbo].[member]    Script Date: 2019/9/6 下午 01:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member](
	[member_id] [int] IDENTITY(1,1) NOT NULL,
	[account] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NULL,
	[idnumber] [nvarchar](50) NULL,
	[sex] [nvarchar](10) NULL,
	[birth] [date] NULL,
	[registeredtime] [datetime] NULL,
	[isactive] [bit] NULL,
	[token] [nvarchar](max) NULL,
 CONSTRAINT [PK_member] PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [team6project] SET  READ_WRITE 
GO
