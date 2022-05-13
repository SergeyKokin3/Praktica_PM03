USE [master]
GO
/****** Object:  Database [Телком Нема Связь]    Script Date: 13.05.2022 12:38:24 ******/
CREATE DATABASE [Телком Нема Связь]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Телком Нема Связь', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Телком Нема Связь.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Телком Нема Связь_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Телком Нема Связь_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Телком Нема Связь] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Телком Нема Связь].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Телком Нема Связь] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET ARITHABORT OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Телком Нема Связь] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Телком Нема Связь] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Телком Нема Связь] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Телком Нема Связь] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Телком Нема Связь] SET  MULTI_USER 
GO
ALTER DATABASE [Телком Нема Связь] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Телком Нема Связь] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Телком Нема Связь] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Телком Нема Связь] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Телком Нема Связь] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Телком Нема Связь] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Телком Нема Связь] SET QUERY_STORE = OFF
GO
USE [Телком Нема Связь]
GO
/****** Object:  Table [dbo].[Данные по оборудованию]    Script Date: 13.05.2022 12:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Данные по оборудованию](
	[ID оборудования] [int] NOT NULL,
	[Наименование оборудования] [varchar](100) NULL,
	[Тип] [int] NULL,
	[Серийный номер] [varchar](100) NULL,
	[MAC-адрес] [varchar](100) NULL,
	[IP-адрес] [varchar](100) NULL,
	[Номер телефона] [varchar](100) NULL,
	[Дата установки] [date] NULL,
 CONSTRAINT [PK_Данные по оборудованию] PRIMARY KEY CLUSTERED 
(
	[ID оборудования] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Данные по подключению абонентов]    Script Date: 13.05.2022 12:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Данные по подключению абонентов](
	[Порт] [int] NOT NULL,
	[Оборудование] [int] NULL,
	[Адрес] [varchar](100) NULL,
	[Тип порта] [int] NULL,
	[Имя] [varchar](100) NULL,
	[Фамилия] [varchar](100) NULL,
	[Отчество] [varchar](100) NULL,
 CONSTRAINT [PK_Данные по подключению абонентов] PRIMARY KEY CLUSTERED 
(
	[Порт] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пользователи]    Script Date: 13.05.2022 12:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пользователи](
	[ID пользователя] [int] NOT NULL,
	[Имя] [varchar](100) NULL,
	[Фамилия] [varchar](100) NULL,
	[Отчество] [varchar](100) NULL,
	[Номер] [varchar](100) NULL,
	[Пароль] [varchar](100) NULL,
	[Почта] [varchar](100) NULL,
	[Номер телефона] [varchar](20) NULL,
	[Роль] [int] NULL,
 CONSTRAINT [PK_Пользователи] PRIMARY KEY CLUSTERED 
(
	[ID пользователя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Роли]    Script Date: 13.05.2022 12:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Роли](
	[ID Роли] [int] NOT NULL,
	[Наименование] [varchar](100) NULL,
 CONSTRAINT [PK_Роли] PRIMARY KEY CLUSTERED 
(
	[ID Роли] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тип оборудования]    Script Date: 13.05.2022 12:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тип оборудования](
	[ID типа оборудования] [int] NOT NULL,
	[Тип оборудования] [varchar](100) NULL,
 CONSTRAINT [PK_Тип оборудования] PRIMARY KEY CLUSTERED 
(
	[ID типа оборудования] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тип порта]    Script Date: 13.05.2022 12:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тип порта](
	[ID типа порта] [int] NOT NULL,
	[Тип порта] [varchar](100) NULL,
 CONSTRAINT [PK_Тип порта] PRIMARY KEY CLUSTERED 
(
	[ID типа порта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Данные по оборудованию]  WITH CHECK ADD  CONSTRAINT [FK_Данные по оборудованию_Тип оборудования] FOREIGN KEY([Тип])
REFERENCES [dbo].[Тип оборудования] ([ID типа оборудования])
GO
ALTER TABLE [dbo].[Данные по оборудованию] CHECK CONSTRAINT [FK_Данные по оборудованию_Тип оборудования]
GO
ALTER TABLE [dbo].[Данные по подключению абонентов]  WITH CHECK ADD  CONSTRAINT [FK_Данные по подключению абонентов_Данные по оборудованию] FOREIGN KEY([Оборудование])
REFERENCES [dbo].[Данные по оборудованию] ([ID оборудования])
GO
ALTER TABLE [dbo].[Данные по подключению абонентов] CHECK CONSTRAINT [FK_Данные по подключению абонентов_Данные по оборудованию]
GO
ALTER TABLE [dbo].[Данные по подключению абонентов]  WITH CHECK ADD  CONSTRAINT [FK_Данные по подключению абонентов_Тип оборудования] FOREIGN KEY([Оборудование])
REFERENCES [dbo].[Тип оборудования] ([ID типа оборудования])
GO
ALTER TABLE [dbo].[Данные по подключению абонентов] CHECK CONSTRAINT [FK_Данные по подключению абонентов_Тип оборудования]
GO
ALTER TABLE [dbo].[Данные по подключению абонентов]  WITH CHECK ADD  CONSTRAINT [FK_Данные по подключению абонентов_Тип порта] FOREIGN KEY([Тип порта])
REFERENCES [dbo].[Тип порта] ([ID типа порта])
GO
ALTER TABLE [dbo].[Данные по подключению абонентов] CHECK CONSTRAINT [FK_Данные по подключению абонентов_Тип порта]
GO
ALTER TABLE [dbo].[Пользователи]  WITH CHECK ADD  CONSTRAINT [FK_Пользователи_Роли] FOREIGN KEY([Роль])
REFERENCES [dbo].[Роли] ([ID Роли])
GO
ALTER TABLE [dbo].[Пользователи] CHECK CONSTRAINT [FK_Пользователи_Роли]
GO
USE [master]
GO
ALTER DATABASE [Телком Нема Связь] SET  READ_WRITE 
GO
