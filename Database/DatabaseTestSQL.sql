USE [master]
GO
/****** Object:  Database [Database]    Script Date: 7/26/2019 10:51:39 PM ******/
CREATE DATABASE [Database]
 CONTAINMENT = NONE

GO
ALTER DATABASE [Database] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Database] SET ARITHABORT OFF 
GO
ALTER DATABASE [Database] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Database] SET RECOVERY FULL 
GO
ALTER DATABASE [Database] SET  MULTI_USER 
GO
ALTER DATABASE [Database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Database] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Database] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Database', N'ON'
GO
USE [Database]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAuditTrail]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAuditTrail](
	[Dater] [varchar](50) NULL,
	[Transactype] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Authority] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCashierRecord]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCashierRecord](
	[Cashier] [varchar](50) NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalSum] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[DateTime] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogin](
	[ID] [varchar](50) NOT NULL,
	[FullName] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tblLogin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogTrail]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogTrail](
	[Dater] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Authority] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblManufacturer]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblManufacturer](
	[ID] [varchar](50) NOT NULL,
	[MName] [varchar](50) NULL,
 CONSTRAINT [PK_tblManufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNewOrder]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNewOrder](
	[IDOrder] [varchar](50) NOT NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL,
	[CritLimit] [varchar](50) NULL,
 CONSTRAINT [PK_tblNewOrder] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderNote]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderNote](
	[OrderID] [varchar](50) NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL,
	[CritLimit] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderNote2]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderNote2](
	[OrderID] [varchar](50) NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ID] [varchar](50) NOT NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[CritLimit] [varchar](50) NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRecord]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRecord](
	[ID] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalSum] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[DateTime] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRecordInventory]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRecordInventory](
	[OrderID] [varchar](50) NULL,
	[ID] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalSum] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[DateTime] [varchar](50) NULL,
	[OrderType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReorder]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReorder](
	[IDOrder] [varchar](50) NOT NULL,
	[PID] [varchar](50) NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[NetPrice] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[DateOrder] [varchar](50) NULL,
	[DateDeliver] [varchar](50) NULL,
 CONSTRAINT [PK_tblReorder] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTempCart]    Script Date: 7/26/2019 10:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTempCart](
	[PID] [varchar](50) NOT NULL,
	[Descrip] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Qty] [varchar](50) NULL,
	[Total] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
 CONSTRAINT [PK_tblTempCart] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblAdmin] ([Username], [Password]) VALUES (N'admin', N'123')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'7/24/2019 1:47:00 PM', N'Updation', N'Item: ''White Shirt'' was UPDATED!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'7/24/2019 2:04:57 PM', N'Insertion', N'Order:OrID:YPN37 has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'7/24/2019 2:10:08 PM', N'Insertion', N'iphone has been inserted into database!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'7/24/2019 1:47:55 PM', N'Insertion', N'REOrder: RoID:P3RAA has been sent to orders form!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'7/24/2019 1:50:30 PM', N'Insertion', N'Order:OrID:01IRZ has been sent to orders!', N'Admin')
INSERT [dbo].[tblAuditTrail] ([Dater], [Transactype], [Description], [Authority]) VALUES (N'7/24/2019 2:09:03 PM', N'Insertion', N'ipad has been inserted into database!', N'Admin')
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:XZMZF', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:TQFJ3', N'Skinny Jeans', N'450', N'1', N'450.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:PAUYU', N'Board Short', N'600', N'1', N'600.00', N'Male', N'Small', N'hasros', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'liela', N'ID:1GK6W', N'White T-Shirt', N'300', N'1', N'300.00', N'Male', N'Small', N'haswwt', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'liela', N'ID:3W50J', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'liela', N'ID:OZT59', N'Black T-Shirt', N'250', N'1', N'250.00', N'Male', N'Small', N'sggas', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'xav', N'ID:1GK6W', N'White T-Shirt', N'300', N'1', N'300.00', N'Male', N'Small', N'haswwt', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'xav', N'ID:3W50J', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'xav', N'ID:OZT59', N'Black T-Shirt', N'250', N'1', N'250.00', N'Male', N'Small', N'sggas', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:XZMZF', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:1GK6W', N'White T-Shirt', N'300', N'6', N'1,800.00', N'Male', N'Small', N'haswwt', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:7GS6C', N'White Short', N'700', N'1', N'700.00', N'Male', N'Small', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:TQFJ3', N'Skinny Jeans', N'450', N'5', N'2,250.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:OZT59', N'Black T-Shirt', N'250', N'4', N'1,000.00', N'Male', N'Small', N'sggas', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:W1DS8', N'T-Shirt', N'600', N'15', N'9,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:W1DS8', N'T-Shirt', N'600', N'10', N'6,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-18' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:W1DS8', N'T-Shirt', N'600', N'9', N'5,400.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-18' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:W1DS8', N'T-Shirt', N'600', N'50', N'30,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:BI0ZI', N'Black Short', N'200', N'34', N'6,800.00', N'Male', N'Small', N'zat', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:9XDK8', N'White Shirt', N'300', N'35', N'10,500.00', N'Male', N'Medium', N'zaen', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'admin', N'ID:9XDK8', N'White Shirt', N'300', N'2', N'600.00', N'Male', N'Medium', N'zaen', CAST(N'2019-07-22' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'admin', N'ID:BI0ZI', N'Black Short', N'200', N'10', N'2,000.00', N'Male', N'Small', N'zat', CAST(N'2019-07-22' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'admin', N'ID:9XDK8', N'White Shirt', N'300', N'2', N'600.00', N'Male', N'Medium', N'zaen', CAST(N'2019-07-22' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'admin', N'ID:W1DS8', N'T-Shirt', N'600', N'1', N'600.00', N'Male', N'Medium', N'jagg', CAST(N'2019-07-24' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'admin', N'ID:BI0ZI', N'Black Short', N'200', N'5', N'1,000.00', N'Male', N'Small', N'zat', CAST(N'2019-07-24' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'admin', N'ID:JAS19', N'iphone', N'100', N'1', N'100.00', N'Male', N'Small', N'12', CAST(N'2019-07-24' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'admin', N'ID:9XDK8', N'White Shirt', N'200', N'1', N'200.00', N'Male', N'Medium', N'zaen', CAST(N'2019-07-25' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'admin', N'ID:W1DS8', N'T-Shirt', N'600', N'1', N'600.00', N'Male', N'Medium', N'jagg', CAST(N'2019-07-25' AS Date))
INSERT [dbo].[tblCashierRecord] ([Cashier], [PID], [Descrip], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'wat', N'ID:W1DS8', N'T-Shirt', N'600', N'1', N'600.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblLogin] ([ID], [FullName], [Age], [Address], [Contact], [Username], [Password]) VALUES (N'USR:3011A', N'Liela Malaaue', N'18', N'Canlanipa', N'123123123', N'admin', N'123')
INSERT [dbo].[tblLogin] ([ID], [FullName], [Age], [Address], [Contact], [Username], [Password]) VALUES (N'USR:D9QD3', N'trungkien', N'20', N'HCM', N'0966096510', N'trungkien', N'Ltk99701299')
INSERT [dbo].[tblLogin] ([ID], [FullName], [Age], [Address], [Contact], [Username], [Password]) VALUES (N'USR:EE123', N'John Paul L. Colon', N'19', N'Mana Pepang Village', N'09012452545', N'wat', N'123')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 1:52:27 PM', N'User: trungkien has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 1:57:42 PM', N'User: trungkien has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 2:02:24 PM', N'User: admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 2:03:21 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 2:06:29 PM', N'User: admin has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'07-24-2019', N'User: admin has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 2:10:19 PM', N'User: admin has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'07-24-2019', N'User: admin has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 2:20:01 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'07-25-2019', N'User: User has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/25/2019 7:01:59 PM', N'User: admin has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/25/2019 10:46:13 PM', N'User: admin has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'07-25-2019', N'User: admin has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/25/2019 10:48:50 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/25/2019 10:57:07 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/26/2019 12:32:18 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/26/2019 12:32:40 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 2:10:11 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 1:52:12 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 2:07:03 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 2:01:26 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'07-24-2019', N'User: admin has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'07-24-2019', N'User: trungkien has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/25/2019 7:05:47 PM', N'User: admin has successfully Logged In!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/25/2019 10:57:29 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'07-24-2019', N'User: trungkien has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/25/2019 10:51:49 PM', N'User: Admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 2:16:57 PM', N'User: admin has successfully Logged In!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'7/24/2019 2:20:04 PM', N'User: admin has successfully logged Out!', N'Admin')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'07-24-2019', N'User: User has Logged out!', N'Cashier')
INSERT [dbo].[tblLogTrail] ([Dater], [Descrip], [Authority]) VALUES (N'07-25-2019', N'User: admin has Logged out!', N'Cashier')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:7B1VY', N'Thanh')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:AV39W', N'apple')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:DR2TN', N'Xyz company')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:KLJT5', N'lel company')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:ROBF4', N'123')
INSERT [dbo].[tblManufacturer] ([ID], [MName]) VALUES (N'MID:WU5JB', N'thanh')
INSERT [dbo].[tblNewOrder] ([IDOrder], [PID], [Descrip], [Price], [NetPrice], [Type], [Size], [Brand], [Stock], [Manufacturer], [DateOrder], [DateDeliver], [CritLimit]) VALUES (N'OrID:01IRZ', N'ID:JAS19', N'iphone', N'100', N'100', N'Male', N'Small', N'12', N'9', N'apple', N'7/24/2019 1:50:28 PM', N'7/25/2019 1:50:17 PM', N'1')
INSERT [dbo].[tblNewOrder] ([IDOrder], [PID], [Descrip], [Price], [NetPrice], [Type], [Size], [Brand], [Stock], [Manufacturer], [DateOrder], [DateDeliver], [CritLimit]) VALUES (N'OrID:CQF7U', N'ID:SM78D', N'T-shirt Blue', N'200', N'150', N'Male', N'Medium', N'H&M', N'50', N'lel company', N'24/04/2018 8:58:39 AM', N'4/05/2018 8:58:36 AM', N'10')
INSERT [dbo].[tblNewOrder] ([IDOrder], [PID], [Descrip], [Price], [NetPrice], [Type], [Size], [Brand], [Stock], [Manufacturer], [DateOrder], [DateDeliver], [CritLimit]) VALUES (N'OrID:LO924', N'ID:VYIBD', N'White Short', N'300', N'225', N'Female', N'Small', N'Zara', N'100', N'Xyz company', N'24/04/2018 8:59:29 AM', N'2/05/2018 8:59:26 AM', N'10')
INSERT [dbo].[tblNewOrder] ([IDOrder], [PID], [Descrip], [Price], [NetPrice], [Type], [Size], [Brand], [Stock], [Manufacturer], [DateOrder], [DateDeliver], [CritLimit]) VALUES (N'OrID:YPN37', N'ID:8ZXCG', N'ipad', N'100', N'100', N'Male', N'Large', N'apple', N'90', N'apple', N'7/24/2019 2:04:55 PM', N'7/24/2019 2:03:41 PM', N'0')
INSERT [dbo].[tblNewOrder] ([IDOrder], [PID], [Descrip], [Price], [NetPrice], [Type], [Size], [Brand], [Stock], [Manufacturer], [DateOrder], [DateDeliver], [CritLimit]) VALUES (N'OrID:Z8BUO', N'ID:9HL4Y', N'Long Sleeves T-shirt Black', N'300', N'200', N'Female', N'Small', N'Cotton On', N'50', N'Xyz company', N'24/04/2018 8:57:52 AM', N'4/05/2018 8:57:45 AM', N'10')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit]) VALUES (N'ID:8ZXCG', N'ipad', N'100', N'Male', N'Large', N'apple', N'10', N'100', N'apple', N'0')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit]) VALUES (N'ID:9XDK8', N'White Shirt', N'200', N'Male', N'Medium', N'zaen', N'99', N'200', N'lel company', N'15')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit]) VALUES (N'ID:BI0ZI', N'Black Short', N'200', N'Male', N'Small', N'zat', N'99', N'150', N'Xyz company', N'20')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit]) VALUES (N'ID:JAS19', N'iphone', N'100', N'Male', N'Small', N'12', N'0', N'100', N'apple', N'1')
INSERT [dbo].[tblProduct] ([ID], [Descrip], [Price], [Type], [Size], [Brand], [Stock], [NetPrice], [Manufacturer], [CritLimit]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'Male', N'Medium', N'jagg', N'99', N'500', N'lel company', N'10')
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:XZMZF', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:TQFJ3', N'Skinny Jeans', N'450', N'1', N'450.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:PAUYU', N'Board Short', N'600', N'1', N'600.00', N'Male', N'Small', N'hasros', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:1GK6W', N'White T-Shirt', N'300', N'1', N'300.00', N'Male', N'Small', N'haswwt', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:3W50J', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:OZT59', N'Black T-Shirt', N'250', N'1', N'250.00', N'Male', N'Small', N'sggas', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:1GK6W', N'White T-Shirt', N'300', N'1', N'300.00', N'Male', N'Small', N'haswwt', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:3W50J', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:OZT59', N'Black T-Shirt', N'250', N'1', N'250.00', N'Male', N'Small', N'sggas', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:XZMZF', N'Short', N'200', N'1', N'200.00', N'Male', N'Small', N'Penshoppe', CAST(N'2015-10-15' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:1GK6W', N'White T-Shirt', N'300', N'6', N'1,800.00', N'Male', N'Small', N'haswwt', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:7GS6C', N'White Short', N'700', N'1', N'700.00', N'Male', N'Small', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:TQFJ3', N'Skinny Jeans', N'450', N'5', N'2,250.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:OZT59', N'Black T-Shirt', N'250', N'4', N'1,000.00', N'Male', N'Small', N'sggas', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'15', N'9,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'10', N'6,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-18' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'9', N'5,400.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-18' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'50', N'30,000.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:BI0ZI', N'Black Short', N'200', N'34', N'6,800.00', N'Male', N'Small', N'zat', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:9XDK8', N'White Shirt', N'300', N'35', N'10,500.00', N'Male', N'Medium', N'zaen', CAST(N'2015-10-19' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:9XDK8', N'White Shirt', N'300', N'2', N'600.00', N'Male', N'Medium', N'zaen', CAST(N'2019-07-22' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:BI0ZI', N'Black Short', N'200', N'10', N'2,000.00', N'Male', N'Small', N'zat', CAST(N'2019-07-22' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:9XDK8', N'White Shirt', N'300', N'2', N'600.00', N'Male', N'Medium', N'zaen', CAST(N'2019-07-22' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'1', N'600.00', N'Male', N'Medium', N'jagg', CAST(N'2019-07-24' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:BI0ZI', N'Black Short', N'200', N'5', N'1,000.00', N'Male', N'Small', N'zat', CAST(N'2019-07-24' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:JAS19', N'iphone', N'100', N'1', N'100.00', N'Male', N'Small', N'12', CAST(N'2019-07-24' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:9XDK8', N'White Shirt', N'200', N'1', N'200.00', N'Male', N'Medium', N'zaen', CAST(N'2019-07-25' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'1', N'600.00', N'Male', N'Medium', N'jagg', CAST(N'2019-07-25' AS Date))
INSERT [dbo].[tblRecord] ([ID], [Description], [Price], [Quantity], [TotalSum], [Type], [Size], [Brand], [DateTime]) VALUES (N'ID:W1DS8', N'T-Shirt', N'600', N'1', N'600.00', N'Male', N'Medium', N'jagg', CAST(N'2015-10-17' AS Date))
USE [master]
GO
ALTER DATABASE [Database] SET  READ_WRITE 
GO
