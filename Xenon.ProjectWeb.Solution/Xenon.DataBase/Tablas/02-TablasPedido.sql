--Use BDBoticService
--Go


--CREATE TABLE [dbo].[Clientes](
--	[IdCliente] [CHAR](5) NOT NULL,
--	[ApellidoMaterno] [VARCHAR](30),
--	[ApellidoPaterno] [VARCHAR](30),
--	[Nombres] [VARCHAR](30),
--	[IdDistrito] [varchar](3),
--	[Direccion] [VARCHAR](50),
--	[Celular] [VARCHAR](9),
--	[Telefono][VARCHAR](9),
--	[DNI][VARCHAR](8),
--	[Estado][bit],
--	CONSTRAINT PK_Cliente PRIMARY KEY CLUSTERED ([IdCliente] ASC)
--)
--go

--CREATE TABLE [dbo].[TipoCondicionPago](
--	[IdTipoCondicion] [INT] IDENTITY(1,1) NOT NULL,
--	[Descripcion] [VARCHAR](30),
--	CONSTRAINT [PK_TipoCondicionPago] PRIMARY KEY CLUSTERED ([IdTipoCondicion] ASC)
--)
--GO

--CREATE TABLE [dbo].[Tipo_Documento] (
--    [Id_TipoDocumento]   INT           IDENTITY (1, 1) NOT NULL,
--    [Documento] NVARCHAR (50) NULL,
--    [Serie]     NVARCHAR (3)  NULL,
--    [Numero]    NVARCHAR (7)  NULL,
--    [Estado]    BIT           NULL,
--    CONSTRAINT [PK_Tipo_Doc] PRIMARY KEY CLUSTERED ([Id_TipoDocumento] ASC)
--);



--CREATE TABLE [dbo].[Pedido] (
--    [IdPedido]         VARCHAR (11) NOT NULL,
--    [IdCliente]        CHAR (5)     NULL,
--    [Id_TipoDocumento] INT          NULL,
--    [IdTipoCondicion]  INT          NULL,
--    [ValorVenta]       REAL         NULL,
--    [Subtotal]         REAL         NULL,
--    [Descuento]        REAL         NULL,
--    [Interes]          REAL         NULL,
--    [IGV]              REAL         NULL,
--    [Total]            REAL         NULL,
--    [FechaEmision]     DATETIME     DEFAULT (getdate()) NULL,
--    [IdUsuario]        CHAR (4)     NULL,
--	[IdEstado]		INT Null,
--    CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED ([IdPedido] ASC),
--    CONSTRAINT [FK_Pedido_Cliente] FOREIGN KEY ([IdCliente]) REFERENCES [dbo].[Clientes] ([IdCliente]),
--    CONSTRAINT [FK_Pedido_TDocumento] FOREIGN KEY ([Id_TipoDocumento]) REFERENCES [dbo].[Tipo_Documento] ([Id_TipoDocumento]),
--    CONSTRAINT [FK_Pedido_TCondicionPago] FOREIGN KEY ([IdTipoCondicion]) REFERENCES [dbo].[TipoCondicionPago] ([IdTipoCondicion]),
--    CONSTRAINT [FK_Pedido_Usuario] FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuario] ([IdUsuario]),
--	CONSTRAINT [FK_Pedido_Estado] FOREIGN KEY ([IdEstado]) REFERENCES [dbo].[EstadoDocumentos] ([IdEstado])
--)
--Go

--CREATE TABLE [dbo].[DetallePedido] (
--    [IdDetallePedido]   INT          IDENTITY (1, 1) NOT NULL,
--    [IdPedido]          VARCHAR (11) NOT NULL,
--    [IdProducto]        CHAR (12)    NOT NULL,
--    [Precio]            REAL         NULL,
--    [Cantidad]          INT          NULL,
--    [DescuentoUnitario] REAL         NULL,
--    [InteresUnitario]   REAL         NULL,
--    [ImporteTotal]      REAL         NULL,
--    [Estado]            BIT          NULL,
--    CONSTRAINT [Pk_DatallePedido] PRIMARY KEY CLUSTERED ([IdDetallePedido] ASC),
--    CONSTRAINT [FK_Detalle_Pedido] FOREIGN KEY ([IdPedido]) REFERENCES [dbo].[Pedido] ([IdPedido]),
--    CONSTRAINT [FK_Detalle_Producto] FOREIGN KEY ([IdProducto]) REFERENCES [dbo].[Productos] ([IdProducto])
--);


--CREATE TABLE [dbo].[EstadoDocumentos](
--	[IdEstado] INT identity(1,1) Not Null,
--	[Descripcion] Varchar(30),
--	Constraint PK_EstadoDoc Primary key Clustered([IdEstado] asc) 
--)
--Go


--CREATE TABLE [dbo].[ComprobantePago](
--	IdDocumento Char(11) Not null,
--	IdPedido Varchar(11) null,
--	[Id_TipoDocumento] INT null,
--	FechaEmision Datetime default GetDate(),
--	[IdUsuario] Char(4) Null,
--	[IdEstado] INT Null,
--	Constraint PK_Comprobante Primary key Clustered (IdDocumento asc),
--	Constraint FK_Comprobante_Pedido Foreign Key (IdPedido) References [dbo].[Pedido](IdPedido),
--	Constraint FK_Comprobante_TipoDocumento Foreign Key ([Id_TipoDocumento]) References [dbo].[Tipo_Documento]([Id_TipoDocumento]),
--	Constraint FK_Comprobante_Usuario Foreign Key ([IdUsuario]) References [dbo].[Usuario]([IdUsuario]),
--	Constraint FK_Comprobante_Estado Foreign Key ([IdEstado]) References [dbo].[EstadoDocumentos]([IdEstado])
--)
--Go

