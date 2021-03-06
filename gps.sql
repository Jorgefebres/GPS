USE [master]
GO
/****** Object:  Database [SistemaGPS]    Script Date: 14/12/2015 04:53:25 p.m. ******/
CREATE DATABASE [SistemaGPS] ON  PRIMARY 
( NAME = N'SistemaGPS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SistemaGPS.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SistemaGPS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SistemaGPS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SistemaGPS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SistemaGPS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SistemaGPS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SistemaGPS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SistemaGPS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SistemaGPS] SET ARITHABORT OFF 
GO
ALTER DATABASE [SistemaGPS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SistemaGPS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SistemaGPS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SistemaGPS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SistemaGPS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SistemaGPS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SistemaGPS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SistemaGPS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SistemaGPS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SistemaGPS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SistemaGPS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SistemaGPS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SistemaGPS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SistemaGPS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SistemaGPS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SistemaGPS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SistemaGPS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SistemaGPS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SistemaGPS] SET RECOVERY FULL 
GO
ALTER DATABASE [SistemaGPS] SET  MULTI_USER 
GO
ALTER DATABASE [SistemaGPS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SistemaGPS] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SistemaGPS', N'ON'
GO
USE [SistemaGPS]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 14/12/2015 04:53:26 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](30) NOT NULL,
	[Apellidos] [nvarchar](30) NOT NULL,
	[TipoDocumento] [bit] NOT NULL,
	[NDocumento] [nvarchar](11) NOT NULL,
	[Direccion] [nvarchar](30) NOT NULL,
	[Telefono] [nvarchar](10) NOT NULL,
	[Telefono1] [nvarchar](10) NULL,
	[Mail] [nvarchar](30) NOT NULL,
	[Usuario] [nvarchar](10) NULL,
	[Password] [nvarchar](16) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Compras]    Script Date: 14/12/2015 04:53:27 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[IdCompra] [int] IDENTITY(1,1) NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Total] [money] NOT NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[IdCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DetalleCompra]    Script Date: 14/12/2015 04:53:27 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleCompra](
	[IdDetalleCompra] [int] IDENTITY(1,1) NOT NULL,
	[IdCompra] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_DetalleCompra] PRIMARY KEY CLUSTERED 
(
	[IdDetalleCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 14/12/2015 04:53:27 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[IdDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdVenta] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_DetalleVenta] PRIMARY KEY CLUSTERED 
(
	[IdDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 14/12/2015 04:53:27 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[IdPago] [int] IDENTITY(1,1) NOT NULL,
	[IdVentaServicio] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[Monto] [money] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[IdPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 14/12/2015 04:53:27 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[Nombre] [nvarchar](15) NOT NULL,
	[Marca] [nvarchar](10) NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
	[Precio] [money] NOT NULL,
	[Stock] [int] NOT NULL,
	[FechaIngreso] [date] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 14/12/2015 04:53:27 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[IdProveedores] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](20) NOT NULL,
	[RUC] [nvarchar](11) NOT NULL,
	[Direccion] [nvarchar](20) NOT NULL,
	[Ciudad] [nvarchar](15) NOT NULL,
	[telefono] [nvarchar](10) NOT NULL,
	[Telefono1] [nvarchar](10) NULL,
	[Mail] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[IdProveedores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 14/12/2015 04:53:27 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[IdServicio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](30) NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
	[Precio] [money] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 14/12/2015 04:53:27 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](30) NOT NULL,
	[Apellidos] [nvarchar](30) NOT NULL,
	[DNI] [nvarchar](10) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
	[Telefono] [nvarchar](10) NOT NULL,
	[Telefono1] [nvarchar](10) NULL,
	[Mail] [nvarchar](35) NOT NULL,
	[Tipo] [bit] NOT NULL,
	[Usuario] [nvarchar](10) NOT NULL,
	[Password] [nvarchar](16) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 14/12/2015 04:53:27 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[IdVenta] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[TipoVenta] [bit] NOT NULL,
	[Total] [money] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VentaServicio]    Script Date: 14/12/2015 04:53:27 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaServicio](
	[IdVentaServicio] [int] IDENTITY(1,1) NOT NULL,
	[Idcliente] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_VentaServicio] PRIMARY KEY CLUSTERED 
(
	[IdVentaServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [Apellidos], [TipoDocumento], [NDocumento], [Direccion], [Telefono], [Telefono1], [Mail], [Usuario], [Password]) VALUES (1, N'Popeye', N'The Sailor', 1, N'11111111', N'su casa 2', N'212121', N'987654334', N'popeye@sailor.com', N'popeye', NULL)
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [Apellidos], [TipoDocumento], [NDocumento], [Direccion], [Telefono], [Telefono1], [Mail], [Usuario], [Password]) VALUES (2, N'Buggs', N'Bunny', 1, N'11111112', N'otra casa1', N'232121', N'999877666', N'buggs@bunny.com', N'buggs', NULL)
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [Apellidos], [TipoDocumento], [NDocumento], [Direccion], [Telefono], [Telefono1], [Mail], [Usuario], [Password]) VALUES (3, N'Olivia', N'De Popeye', 1, N'11111110', N'con popeye', N'232323', N'987654321', N'olivia@sailor.com', N'olivia', N'123456')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [Apellidos], [TipoDocumento], [NDocumento], [Direccion], [Telefono], [Telefono1], [Mail], [Usuario], [Password]) VALUES (5, N'ejempo', N'ejemplo', 1, N'12345678', N'av las avenidas S/N', N'433221', NULL, N'ejemplo@ejemplo.com', N'ejemplo', N'123456')
INSERT [dbo].[Clientes] ([IdCliente], [Nombres], [Apellidos], [TipoDocumento], [NDocumento], [Direccion], [Telefono], [Telefono1], [Mail], [Usuario], [Password]) VALUES (9, N'prueba', N'prueba', 0, N'12345678', N'el bosque los boosques S/N', N'212122', N'', N'prueba11@prueba.com', N'prueba11', N'123456')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
SET IDENTITY_INSERT [dbo].[Compras] ON 

INSERT [dbo].[Compras] ([IdCompra], [IdEmpleado], [Fecha], [Total]) VALUES (1, 1, CAST(0xBB3A0B00 AS Date), 300.0000)
INSERT [dbo].[Compras] ([IdCompra], [IdEmpleado], [Fecha], [Total]) VALUES (2, 2, CAST(0xBB3A0B00 AS Date), 350.4500)
SET IDENTITY_INSERT [dbo].[Compras] OFF
SET IDENTITY_INSERT [dbo].[Pagos] ON 

INSERT [dbo].[Pagos] ([IdPago], [IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (2, 2, 1, 345.0000, CAST(0xD93A0B00 AS Date))
INSERT [dbo].[Pagos] ([IdPago], [IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (3, 2, 2, 432.0000, CAST(0xD93A0B00 AS Date))
INSERT [dbo].[Pagos] ([IdPago], [IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (4, 4, 1, 123.0000, CAST(0xBB3A0B00 AS Date))
INSERT [dbo].[Pagos] ([IdPago], [IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (7, 8, 2, 325.5000, CAST(0xC43A0B00 AS Date))
INSERT [dbo].[Pagos] ([IdPago], [IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (8, 8, 2, 325.5000, CAST(0xC43A0B00 AS Date))
INSERT [dbo].[Pagos] ([IdPago], [IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (9, 7, 2, 325.5000, CAST(0xC43A0B00 AS Date))
INSERT [dbo].[Pagos] ([IdPago], [IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (10, 5, 2, 555.0000, CAST(0xC43A0B00 AS Date))
INSERT [dbo].[Pagos] ([IdPago], [IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (11, 9, 2, 555.0000, CAST(0xC43A0B00 AS Date))
INSERT [dbo].[Pagos] ([IdPago], [IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (12, 5, 3, 555.0000, CAST(0xC43A0B00 AS Date))
INSERT [dbo].[Pagos] ([IdPago], [IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (13, 6, 3, 555.0000, CAST(0xC43A0B00 AS Date))
INSERT [dbo].[Pagos] ([IdPago], [IdVentaServicio], [IdEmpleado], [Monto], [Fecha]) VALUES (14, 11, 3, 325.5000, CAST(0xC43A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Pagos] OFF
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (4, 1, N'controlador', N'Chancho', N'controlador de gps', 55.4500, 34, CAST(0x75C10A00 AS Date), 0)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (5, 2, N'GPS', N'Original', NULL, 145.0000, 11, CAST(0xBB3A0B00 AS Date), 1)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (6, 2, N'controlador', N'Original', N'controlador de gps', 75.5000, 68, CAST(0xBB3A0B00 AS Date), 1)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (8, 1, N'prueb', N'prueb', NULL, 45.5000, 55, CAST(0xC23A0B00 AS Date), 1)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (11, 3, N'ejemplo', N'ejemplo', N'hgfhgfjhgfjhgfjhgfhj', 124.0000, 23, CAST(0xC23A0B00 AS Date), 1)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (12, 3, N'ejemplo1', N'ejemplo1', N'otro', 124.0000, 33, CAST(0xC23A0B00 AS Date), 1)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (13, 3, N'algo', N'algo', N'algo', 12.1500, 123, CAST(0x8B390B00 AS Date), 1)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (14, 1, N'ejemplo', N'ejemplo', N'otro', 124.0000, 33, CAST(0xC23A0B00 AS Date), 1)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (15, 1, N'ejemploss', N'ejemplo', N'otro', 124.0000, 21, CAST(0xC23A0B00 AS Date), 0)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (17, 2, N'ejemplo', N'ejemplo', N'otro', 124.0000, 33, CAST(0xC23A0B00 AS Date), 1)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (19, 1, N'ejemplo1', N'ejemplo1', N'otros', 111.0000, 80, CAST(0xC23A0B00 AS Date), 1)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (23, 2, N'eee', N'eee', N'eee', 12.6700, 121, CAST(0xBB3A0B00 AS Date), 1)
INSERT [dbo].[Productos] ([IdProducto], [IdProveedor], [Nombre], [Marca], [Descripcion], [Precio], [Stock], [FechaIngreso], [Estado]) VALUES (28, 4, N'zzzzz', N'zzzz', N'zzzzz', 13.5000, 25, CAST(0xC93A0B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[Productos] OFF
SET IDENTITY_INSERT [dbo].[Proveedores] ON 

INSERT [dbo].[Proveedores] ([IdProveedores], [Nombre], [RUC], [Direccion], [Ciudad], [telefono], [Telefono1], [Mail]) VALUES (1, N'GPS Provider', N'12345678901', N'su casa', N'AQP', N'212121', NULL, N'provider@gps.com')
INSERT [dbo].[Proveedores] ([IdProveedores], [Nombre], [RUC], [Direccion], [Ciudad], [telefono], [Telefono1], [Mail]) VALUES (2, N'Proveedor trucho', N'2345671212', N'otra casa', N'Lima', N'012345621', N'958364725', N'proveedor@trucho.com')
INSERT [dbo].[Proveedores] ([IdProveedores], [Nombre], [RUC], [Direccion], [Ciudad], [telefono], [Telefono1], [Mail]) VALUES (3, N'ejemplo', N'222222222', N'lejos no', N'Arequipa', N'232323', NULL, N'ejemplo@ejemplo.com')
INSERT [dbo].[Proveedores] ([IdProveedores], [Nombre], [RUC], [Direccion], [Ciudad], [telefono], [Telefono1], [Mail]) VALUES (4, N'nuevo', N'212121', N'otra casa', N'AQP', N'054123456', N'951283745', N'ejemplo@ejemplo.com')
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
SET IDENTITY_INSERT [dbo].[Servicios] ON 

INSERT [dbo].[Servicios] ([IdServicio], [Nombre], [Descripcion], [Precio], [Estado]) VALUES (1, N'Rastreo satelital', N'rastreamos toditio', 325.5000, 1)
INSERT [dbo].[Servicios] ([IdServicio], [Nombre], [Descripcion], [Precio], [Estado]) VALUES (2, N'rsatreo monitor', N'rsatreamos mejor', 555.0000, 1)
INSERT [dbo].[Servicios] ([IdServicio], [Nombre], [Descripcion], [Precio], [Estado]) VALUES (4, N'ejemplo', N'ejemplo', 123.4500, 1)
INSERT [dbo].[Servicios] ([IdServicio], [Nombre], [Descripcion], [Precio], [Estado]) VALUES (5, N'ejemplo', N'ejemplo', 123.4500, 0)
INSERT [dbo].[Servicios] ([IdServicio], [Nombre], [Descripcion], [Precio], [Estado]) VALUES (6, N'ejemplo1', N'ejemplo1', 123.4500, 1)
INSERT [dbo].[Servicios] ([IdServicio], [Nombre], [Descripcion], [Precio], [Estado]) VALUES (9, N'prueba', N'esta es una prueba', 30.5500, 1)
SET IDENTITY_INSERT [dbo].[Servicios] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([IdUsuario], [Nombres], [Apellidos], [DNI], [Direccion], [Telefono], [Telefono1], [Mail], [Tipo], [Usuario], [Password]) VALUES (1, N'Jorge', N'Concha', N'21212121', N'Su casa', N'212121', N'952121212', N'ejemplo@ejemplo.com', 1, N'jorge', N'123456')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombres], [Apellidos], [DNI], [Direccion], [Telefono], [Telefono1], [Mail], [Tipo], [Usuario], [Password]) VALUES (2, N'Andrea', N'San Martin', N'12121212', N'Su casa', N'121212', N'958787878', N'andrea@san.martin', 0, N'andrea', N'123456')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombres], [Apellidos], [DNI], [Direccion], [Telefono], [Telefono1], [Mail], [Tipo], [Usuario], [Password]) VALUES (3, N'Lucas', N'el pato', N'11111111', N'al fondo', N'212121', NULL, N'lucas@pato.com', 0, N'lucas', N'123456')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombres], [Apellidos], [DNI], [Direccion], [Telefono], [Telefono1], [Mail], [Tipo], [Usuario], [Password]) VALUES (4, N'pepe', N'el grillo', N'33333333', N'el bosque', N'323232', NULL, N'pepe@grillo.com', 0, N'pepe', N'123456')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombres], [Apellidos], [DNI], [Direccion], [Telefono], [Telefono1], [Mail], [Tipo], [Usuario], [Password]) VALUES (5, N'ej', N'ej', N'21', N'ej', N'21', NULL, N'23', 0, N'ej', N'123')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombres], [Apellidos], [DNI], [Direccion], [Telefono], [Telefono1], [Mail], [Tipo], [Usuario], [Password]) VALUES (6, N'ejemplo1', N'ejemplo1', N'212123', N'su casa', N'212121', N'87878787', N'popeye@salior.com', 0, N'', N'')
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombres], [Apellidos], [DNI], [Direccion], [Telefono], [Telefono1], [Mail], [Tipo], [Usuario], [Password]) VALUES (7, N'ejemplo1', N'ejemplo1', N'212123', N'su casa', N'212121', N'87878787', N'popeye@salior.com', 0, N'', N'')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (2, 1, 1, 1, 300.0000, CAST(0xBB3A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (4, 1, 1, 0, 2510.0000, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (5, 1, 1, 0, 151.0000, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (6, 1, 1, 0, 1031.0000, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (7, 1, 1, 0, 1031.0000, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (8, 1, 1, 0, 1031.0000, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (9, 1, 1, 0, 986.0000, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (10, 1, 1, 0, 986.0000, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (14, 5, 1, 0, 0.0000, CAST(0xC33A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (15, 1, 1, 0, 0.0000, CAST(0xC33A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (16, 5, 1, 0, 1280.0000, CAST(0xC33A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (17, 1, 1, 0, 1140.0000, CAST(0xC33A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (18, 5, 1, 0, 1033.5000, CAST(0xC33A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (19, 5, 1, 0, 2331.3700, CAST(0xC33A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (20, 5, 1, 0, 2331.3700, CAST(0xC33A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (21, 5, 1, 1, 2476.3700, CAST(0xC33A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (22, 1, 1, 0, 509.4600, CAST(0xC33A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (23, 1, 1, 0, 509.4600, CAST(0xC33A0B00 AS Date))
INSERT [dbo].[Ventas] ([IdVenta], [IdCliente], [IdEmpleado], [TipoVenta], [Total], [Fecha]) VALUES (24, 1, 1, 0, 882.0000, CAST(0xC33A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Ventas] OFF
SET IDENTITY_INSERT [dbo].[VentaServicio] ON 

INSERT [dbo].[VentaServicio] ([IdVentaServicio], [Idcliente], [IdEmpleado], [IdServicio], [Fecha]) VALUES (2, 2, 2, 1, CAST(0xBB3A0B00 AS Date))
INSERT [dbo].[VentaServicio] ([IdVentaServicio], [Idcliente], [IdEmpleado], [IdServicio], [Fecha]) VALUES (4, 2, 1, 1, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[VentaServicio] ([IdVentaServicio], [Idcliente], [IdEmpleado], [IdServicio], [Fecha]) VALUES (5, 3, 1, 2, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[VentaServicio] ([IdVentaServicio], [Idcliente], [IdEmpleado], [IdServicio], [Fecha]) VALUES (6, 3, 1, 2, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[VentaServicio] ([IdVentaServicio], [Idcliente], [IdEmpleado], [IdServicio], [Fecha]) VALUES (7, 3, 1, 1, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[VentaServicio] ([IdVentaServicio], [Idcliente], [IdEmpleado], [IdServicio], [Fecha]) VALUES (8, 1, 1, 1, CAST(0xC13A0B00 AS Date))
INSERT [dbo].[VentaServicio] ([IdVentaServicio], [Idcliente], [IdEmpleado], [IdServicio], [Fecha]) VALUES (9, 2, 1, 2, CAST(0xC23A0B00 AS Date))
INSERT [dbo].[VentaServicio] ([IdVentaServicio], [Idcliente], [IdEmpleado], [IdServicio], [Fecha]) VALUES (11, 3, 1, 1, CAST(0xC33A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[VentaServicio] OFF
/****** Object:  Index [PK_Prveedores]    Script Date: 14/12/2015 04:53:27 p.m. ******/
CREATE NONCLUSTERED INDEX [PK_Prveedores] ON [dbo].[Productos]
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Usuarios] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Usuarios]
GO
ALTER TABLE [dbo].[DetalleCompra]  WITH CHECK ADD  CONSTRAINT [FK_DetalleCompra_Compras] FOREIGN KEY([IdCompra])
REFERENCES [dbo].[Compras] ([IdCompra])
GO
ALTER TABLE [dbo].[DetalleCompra] CHECK CONSTRAINT [FK_DetalleCompra_Compras]
GO
ALTER TABLE [dbo].[DetalleCompra]  WITH CHECK ADD  CONSTRAINT [FK_DetalleCompra_Productos] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[DetalleCompra] CHECK CONSTRAINT [FK_DetalleCompra_Productos]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Productos] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Productos]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Ventas] FOREIGN KEY([IdDetalleVenta])
REFERENCES [dbo].[Ventas] ([IdVenta])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Ventas]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Usuarios] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Usuarios]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_VentaServicio] FOREIGN KEY([IdVentaServicio])
REFERENCES [dbo].[VentaServicio] ([IdVentaServicio])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_VentaServicio]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Proveedores] FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedores] ([IdProveedores])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Proveedores]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Usuarios] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Usuarios]
GO
ALTER TABLE [dbo].[VentaServicio]  WITH CHECK ADD  CONSTRAINT [FK_VentaServicio_Clientes] FOREIGN KEY([Idcliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[VentaServicio] CHECK CONSTRAINT [FK_VentaServicio_Clientes]
GO
ALTER TABLE [dbo].[VentaServicio]  WITH CHECK ADD  CONSTRAINT [FK_VentaServicio_Servicios] FOREIGN KEY([IdServicio])
REFERENCES [dbo].[Servicios] ([IdServicio])
GO
ALTER TABLE [dbo].[VentaServicio] CHECK CONSTRAINT [FK_VentaServicio_Servicios]
GO
ALTER TABLE [dbo].[VentaServicio]  WITH CHECK ADD  CONSTRAINT [FK_VentaServicio_Usuarios] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[VentaServicio] CHECK CONSTRAINT [FK_VentaServicio_Usuarios]
GO
USE [master]
GO
ALTER DATABASE [SistemaGPS] SET  READ_WRITE 
GO
