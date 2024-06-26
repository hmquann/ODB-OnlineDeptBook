USE [master]
GO
/****** Object:  Database [MyODB]    Script Date: 2/22/2023 11:55:45 AM ******/
CREATE DATABASE [MyODB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyODB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MyODB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyODB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MyODB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MyODB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyODB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyODB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyODB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyODB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyODB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyODB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyODB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MyODB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyODB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyODB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyODB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyODB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyODB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyODB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyODB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyODB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MyODB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyODB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyODB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyODB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyODB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyODB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyODB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyODB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MyODB] SET  MULTI_USER 
GO
ALTER DATABASE [MyODB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyODB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyODB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyODB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyODB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MyODB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MyODB] SET QUERY_STORE = OFF
GO
USE [MyODB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2/22/2023 11:55:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [int] IDENTITY(1,1) NOT NULL,
	[accountName] [nvarchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[accountEmail] [varchar](100) NOT NULL,
	[accountAddress] [nvarchar](100) NULL,
	[accountPhone] [nchar](10) NULL,
	[isActive] [bit] NULL,
	[isAdmin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2/22/2023 11:55:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [nvarchar](50) NOT NULL,
	[customerAddress] [nvarchar](100) NULL,
	[customerPhone] [nchar](10) NULL,
	[customerEmail] [varchar](100) NULL,
	[dateCustomeCreate] [datetime] NULL,
	[dateUpdateCustomer] [datetime] NULL,
	[accountID] [int] NULL,
	[Total] [float] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 2/22/2023 11:55:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[emailID] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](200) NULL,
	[isSent] [bit] NULL,
	[accountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[emailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historyTransaction]    Script Date: 2/22/2023 11:55:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historyTransaction](
	[transactionID] [int] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](200) NULL,
	[moneyDebt] [float] NULL,
	[classify] [bit] NULL,
	[dateDebt] [datetime] NULL,
	[dateCreate] [datetime] NULL,
	[customerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[transactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OTP]    Script Date: 2/22/2023 11:55:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OTP](
	[requestType] [int] NOT NULL,
	[isVerify] [bit] NULL,
	[code] [nchar](20) NULL,
	[expireTime] [time](7) NULL,
	[accountID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accountID], [accountName], [password], [accountEmail], [accountAddress], [accountPhone], [isActive], [isAdmin]) VALUES (1, N'Lmao', N'lmeo', N'asd@asd.com', N'HUng Yen', N'0947257842', 1, 0)
INSERT [dbo].[Account] ([accountID], [accountName], [password], [accountEmail], [accountAddress], [accountPhone], [isActive], [isAdmin]) VALUES (2, N'user1', N'c015df33f8c5f931bb6b6f01fe6934b1', N'lytieulong2j2@gmail.com', N'Hung Yen', N'0912312312', 0, 0)
INSERT [dbo].[Account] ([accountID], [accountName], [password], [accountEmail], [accountAddress], [accountPhone], [isActive], [isAdmin]) VALUES (3, N'Leadstoyou', N'c015df33f8c5f931bb6b6f01fe6934b1', N'trinhtiendat2510@gmail.com', N'Hung Yen', N'0947257841', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([customerID], [customerName], [customerAddress], [customerPhone], [customerEmail], [dateCustomeCreate], [dateUpdateCustomer], [accountID], [Total]) VALUES (1, N'TuanVM', NULL, NULL, NULL, CAST(N'2002-12-12T12:12:12.000' AS DateTime), CAST(N'2002-12-13T12:12:12.000' AS DateTime), 2, -150)
INSERT [dbo].[Customer] ([customerID], [customerName], [customerAddress], [customerPhone], [customerEmail], [dateCustomeCreate], [dateUpdateCustomer], [accountID], [Total]) VALUES (2, N'HaiLT', N'lmeo', N'123       ', N'adas', CAST(N'2023-02-25T12:12:12.000' AS DateTime), CAST(N'2023-12-17T12:12:12.000' AS DateTime), 2, -35)
INSERT [dbo].[Customer] ([customerID], [customerName], [customerAddress], [customerPhone], [customerEmail], [dateCustomeCreate], [dateUpdateCustomer], [accountID], [Total]) VALUES (3, N'lmeo', N'', N'          ', N'', CAST(N'2023-02-20T21:13:43.390' AS DateTime), CAST(N'2023-02-20T21:13:43.390' AS DateTime), 2, 0)
INSERT [dbo].[Customer] ([customerID], [customerName], [customerAddress], [customerPhone], [customerEmail], [dateCustomeCreate], [dateUpdateCustomer], [accountID], [Total]) VALUES (4, N'lmao', N'', N'          ', N'', CAST(N'2023-02-20T21:19:57.047' AS DateTime), CAST(N'2023-02-20T21:19:57.047' AS DateTime), 2, 0)
INSERT [dbo].[Customer] ([customerID], [customerName], [customerAddress], [customerPhone], [customerEmail], [dateCustomeCreate], [dateUpdateCustomer], [accountID], [Total]) VALUES (9, N'Huy', N'', N'0984943638', N'maitranhuy1709@gmail.com', CAST(N'2023-02-21T08:14:25.230' AS DateTime), CAST(N'2023-02-21T08:14:25.230' AS DateTime), 2, 0)
INSERT [dbo].[Customer] ([customerID], [customerName], [customerAddress], [customerPhone], [customerEmail], [dateCustomeCreate], [dateUpdateCustomer], [accountID], [Total]) VALUES (10, N'da', N'hung yen', N'123123    ', N'asd@sfas.com', CAST(N'2023-02-22T11:50:15.003' AS DateTime), CAST(N'2023-02-22T11:50:15.003' AS DateTime), 3, 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[historyTransaction] ON 

INSERT [dbo].[historyTransaction] ([transactionID], [note], [moneyDebt], [classify], [dateDebt], [dateCreate], [customerID]) VALUES (1, N'note1', 50, 1, CAST(N'2012-02-02T00:00:00.000' AS DateTime), CAST(N'2023-02-15T12:00:00.000' AS DateTime), 1)
INSERT [dbo].[historyTransaction] ([transactionID], [note], [moneyDebt], [classify], [dateDebt], [dateCreate], [customerID]) VALUES (2, N'note2', 100, 1, CAST(N'2012-02-02T00:00:00.000' AS DateTime), CAST(N'2023-02-15T12:00:00.000' AS DateTime), 1)
INSERT [dbo].[historyTransaction] ([transactionID], [note], [moneyDebt], [classify], [dateDebt], [dateCreate], [customerID]) VALUES (3, N'note3', 35, 1, CAST(N'2012-02-02T00:00:00.000' AS DateTime), CAST(N'2023-02-15T12:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[historyTransaction] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__1E61B049E55928DF]    Script Date: 2/22/2023 11:55:45 AM ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[accountPhone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__CA548954A2F5ABF3]    Script Date: 2/22/2023 11:55:45 AM ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[accountEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((0)) FOR [isAdmin]
GO
ALTER TABLE [dbo].[Email] ADD  DEFAULT ((0)) FOR [isSent]
GO
ALTER TABLE [dbo].[OTP] ADD  DEFAULT ((0)) FOR [isVerify]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Debt] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Debt]
GO
ALTER TABLE [dbo].[Email]  WITH CHECK ADD  CONSTRAINT [FK_AccountrelatedtoEmail] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Email] CHECK CONSTRAINT [FK_AccountrelatedtoEmail]
GO
ALTER TABLE [dbo].[historyTransaction]  WITH CHECK ADD  CONSTRAINT [FK_historyTransaction_Customer] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
ALTER TABLE [dbo].[historyTransaction] CHECK CONSTRAINT [FK_historyTransaction_Customer]
GO
ALTER TABLE [dbo].[OTP]  WITH CHECK ADD  CONSTRAINT [FK_OTP] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[OTP] CHECK CONSTRAINT [FK_OTP]
GO
USE [master]
GO
ALTER DATABASE [MyODB] SET  READ_WRITE 
GO
