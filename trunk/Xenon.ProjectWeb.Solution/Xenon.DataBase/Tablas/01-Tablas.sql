IF (exists(Select * from sysdatabases where name='BDBoticService'))
BEGIN
	USE master
	DROP DATABASE BDBoticService
END

CREATE DATABASE BDBoticService
GO

USE BDBoticService
GO


CREATE TABLE [dbo].[TipoUBigeo](
	[IdTipo] [INT] IDENTITY(1,1) NOT NULL,
	[Descripcion] [VARCHAR](30) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[Ubigeo](
	[IdUbigeo] [INT] IDENTITY(1,1) NOT NULL,
	[Descripcion] [VARCHAR](50) NULL,
	[IdUbigeoRecu] [INT] NULL,
	[IdTipo] [INT] NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[Proveedor](
	[IdProveedor] [CHAR](4) NOT NULL,
	[RUC] [VARCHAR](30) NOT NULL,
	[Razon Social] [VARCHAR](50) NULL,
	[Contacto Proveedor] [VARCHAR](50) NULL,
	[Ubigeo] [VARCHAR](Max) NULL,
	[Direccion] [VARCHAR](30) NULL,
	[Telefono] [VARCHAR](15) NULL,
	[TelefonoContacto] [VARCHAR](15) NULL,
	[Movil] [VARCHAR](15) NULL,
	[Fax] [VARCHAR](15) NULL,
	[Email] [VARCHAR](30) NULL,
	[PaginaWeb] [VARCHAR](50) NULL,
	[Estado] [BIT] NULL
)
GO


CREATE TABLE [dbo].[Componentes](
	[IdComponente] [CHAR](4) NOT NULL,
	[Descripcion] [VARCHAR](30) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[CuadroClinico](
	[IdCuadroClinico] CHAR(4) NOT NULL,
	[Descripcion] [VARCHAR](50) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[Sintomas](
	[IdSintoma] [CHAR](4) NOT NULL,
	[Descripcion] [VARCHAR](50) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[Seccion](
	[IdSeccion] [CHAR](3) NOT NULL,
	[Seccion] [VARCHAR](50) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [CHAR](3) NOT NULL,
	[IdSeccion] [CHAR](3) NULL,
	[Categoria] [VARCHAR](50) NULL,
	[Estado] [BIT] NULL
)
Go

CREATE TABLE [dbo].[Linea](
	[IdLinea] [CHAR](3) NOT NULL,
	[IdCategoria] [CHAR](3)  NULL,
	[Descripcion] [VARCHAR](30) NULL,
	[Estado] [BIT] NULL
)
GO



CREATE TABLE [dbo].[Laboratorio](
	[IdLaboratorio]  [CHAR](4) NOT NULL,
	[Descripcion] [VARCHAR](50) NULL,
	[IdProveedor] [CHAR](4) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[Farmacos](
	[IdFarmaco] [CHAR](4) NOT NULL,
	[Descripcion] [VARCHAR](50) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[ClasificacionTerapeutica](
	[IdClasTerapeutica] [CHAR](4) NOT NULL,
	[IdFarmaco] [CHAR](4) NULL,
	[Descripcion] [VARCHAR](50) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[EstadoFarmaco](
	[IdEstadoFarmaco] [CHAR](2) NOT NULL,
	[Descripcion] [VARCHAR](50) NULL,
	[Estado] [BIT] NULL
)
Go

CREATE TABLE [dbo].[TipoFarmaceutico](
	[IdTipoFarmaceutico] [CHAR](4) NOT NULL,
	[IdEstadoFarmaco] [CHAR](2) NULL,
	[Descripcion] [VARCHAR](50) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[PrincipiosActivos](
	[IdPrincipioActivo] [CHAR](4) NOT NULL,
	[Descripcion] [VARCHAR](50) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[UnidadMedadas](
	[IdUnidadMedida][CHAR](3) NOT NULL,
	[Descripcion] [VARCHAR](50) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[Sexo](
	[IdSexo] [INT] IDENTITY(1,1) NOT NULL,
	[Descripcion] [VARCHAR](30) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[TipoProductos](
	[IdTipoProducto] [INT] IDENTITY(1,1) NOT NULL,
	[Descripcion] [VARCHAR](30) NULL,
	[Estado] [BIT] NULL
)
GO

CREATE TABLE [dbo].[Productos](
	[IdProducto] [CHAR](12) NOT NULL,
	[Producto] [VARCHAR](50) NULL,
	[Descripcion] [VARCHAR](80) NULL,
	[IdLaboratorio]  [CHAR](4) NULL,
	[IdLinea] [CHAR](3) NULL,
	[IdPrincipioActivo] [CHAR](4) NULL,
	[IdTipoFarmaceutico] [CHAR](4) NULL,
	[IdClasTerapeutica] [CHAR](4) NULL,
	[Dosis] [VARCHAR](50) NULL,
	[Precaucion] [VARCHAR](50) NULL,
	[Advertencia] [VARCHAR](50) NULL,
	[ContraIndicaciones] [VARCHAR](50) NULL,
	[StockMinimo] [INT] NULL,
	[StockMaximo] [INT] NULL,
	[IdUnidadMedida] [CHAR](3) NULL,
	[ActivUnidad] [BIT] NULL,
	[CantidadUnidad] [INT] NULL,
	[IdSexo] [INT] NULL,
	[IdTipoProducto] [INT] NULL,
	[CodBarra] [VARCHAR](20) NULL,
	[Foto] [Varchar](100) NULL,
	[Estado] [BIT] NULL
)
GO

/******************************PRIMARY KEY*******************/
--------------------------------------------------------------

ALTER TABLE [dbo].[Categorias] WITH NOCHECK ADD
	CONSTRAINT [PK_Categiria] PRIMARY KEY CLUSTERED
	(
		[IdCategoria]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClasificacionTerapeutica] WITH NOCHECK ADD
	CONSTRAINT [PK_ClasificacionTerapeutica] PRIMARY KEY CLUSTERED
	(
		[IdClasTerapeutica]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Componentes] WITH NOCHECK ADD
	CONSTRAINT [PK_Componentes] PRIMARY KEY CLUSTERED
	(
		[IdComponente]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CuadroClinico] WITH NOCHECK ADD
	CONSTRAINT [PK_CuadroClinico] PRIMARY KEY CLUSTERED
	(
		[IdCuadroClinico]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EstadoFarmaco] WITH NOCHECK ADD
	CONSTRAINT [PK_EstadoFarmaco] PRIMARY KEY CLUSTERED
	(
		[IdEstadoFarmaco]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Farmacos] WITH NOCHECK ADD
	CONSTRAINT [PK_Farmacos] PRIMARY KEY CLUSTERED
	(
		[IdFarmaco]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Laboratorio] WITH NOCHECK ADD
	CONSTRAINT [PK_Laboratorio] PRIMARY KEY CLUSTERED
	(
		[IdLaboratorio]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Linea] WITH NOCHECK ADD
	CONSTRAINT [PK_Linea] PRIMARY KEY CLUSTERED
	(
		[IdLinea]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PrincipiosActivos] WITH NOCHECK ADD
	CONSTRAINT [PK_PrincipiosActivos] PRIMARY KEY CLUSTERED
	(
		[IdPrincipioActivo]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Productos] WITH NOCHECK ADD
	CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED
	(
		[IdProducto]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Proveedor] WITH NOCHECK ADD
	CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED
	(
		[IdProveedor]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Seccion] WITH NOCHECK ADD
	CONSTRAINT [PK_Seccion] PRIMARY KEY CLUSTERED
	(
		[IdSeccion]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Sexo] WITH NOCHECK ADD
	CONSTRAINT [PK_Sexo] PRIMARY KEY CLUSTERED
	(
		[IdSexo]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Sintomas] WITH NOCHECK ADD
	CONSTRAINT [PK_Sintomas] PRIMARY KEY CLUSTERED
	(
		[IdSintoma]
	) ON [PRIMARY]
GO


ALTER TABLE [dbo].[TipoFarmaceutico] WITH NOCHECK ADD
	CONSTRAINT [PK_TipoFarmaceutico] PRIMARY KEY CLUSTERED
	(
		[IdTipoFarmaceutico]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TipoProductos] WITH NOCHECK ADD
	CONSTRAINT [PK_TipoProductos] PRIMARY KEY CLUSTERED
	(
		[IdTipoProducto]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TipoUBigeo] WITH NOCHECK ADD
	CONSTRAINT [PK_TipoUBigeo] PRIMARY KEY CLUSTERED
	(
		[IdTipo]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Ubigeo] WITH NOCHECK ADD
	CONSTRAINT [PK_Ubigeo] PRIMARY KEY CLUSTERED
	(
		[IdUbigeo]
	) ON [PRIMARY]
GO

ALTER TABLE [dbo].[UnidadMedadas] WITH NOCHECK ADD
	CONSTRAINT [PK_UnidadMedadas] PRIMARY KEY CLUSTERED
	(
		[IdUnidadMedida]
	) ON [PRIMARY]
GO


/******************************FOREIGN KEY*******************/
--------------------------------------------------------------

ALTER TABLE [dbo].[Categorias] ADD 
	CONSTRAINT [FK_Categorias_Seccion] FOREIGN KEY 
	(
		[IdSeccion]
	) REFERENCES [dbo].[Seccion] (
		[IdSeccion]
	)
GO

ALTER TABLE [dbo].[ClasificacionTerapeutica] ADD 
	CONSTRAINT [FK_ClasificacionTerapeutica_Farmacos] FOREIGN KEY 
	(
		[IdFarmaco]
	) REFERENCES [dbo].[Farmacos] (
		[IdFarmaco]
	)
GO

ALTER TABLE [dbo].[Laboratorio] ADD 
	CONSTRAINT [FK_Laboratorio_Proveedor] FOREIGN KEY 
	(
		[IdProveedor]
	) REFERENCES [dbo].[Proveedor](
		[IdProveedor]
	)
GO

ALTER TABLE [dbo].[Linea] ADD 
	CONSTRAINT [FK_Linea_Categoria] FOREIGN KEY 
	(
		[IdCategoria]
	) REFERENCES [dbo].[Categorias](
		[IdCategoria]
	)
GO



ALTER TABLE [dbo].[TipoFarmaceutico] ADD 
	CONSTRAINT [FK_TipoFarmaceutico_EstadoFarmaco] FOREIGN KEY 
	(
		[IdEstadoFarmaco]
	) REFERENCES [dbo].[EstadoFarmaco](
		[IdEstadoFarmaco]
	)
GO

ALTER TABLE [dbo].[Ubigeo] ADD 
	CONSTRAINT [FK_Ubigeo_TipoUbigeo] FOREIGN KEY 
	(
		[IdTipo]
	) REFERENCES [dbo].[TipoUBigeo](
		[IdTipo]
	)
GO


ALTER TABLE [dbo].[Productos] ADD 
	CONSTRAINT [FK_Productos_Laboratorio] FOREIGN KEY 
	(
		[IdLaboratorio]
	) REFERENCES  [dbo].[Laboratorio](
		[IdLaboratorio]
	),
	CONSTRAINT [FK_Productos_Lineas] FOREIGN KEY 
	(
		[IdLinea]
	) REFERENCES  [dbo].[Linea](
		[IdLinea]
	),
	CONSTRAINT [FK_Productos_PrincipioActivo] FOREIGN KEY 
	(
		[IdPrincipioActivo]
	) REFERENCES  [dbo].[PrincipiosActivos](
		[IdPrincipioActivo]
	),
	CONSTRAINT [FK_Productos_TipoFarmaceutico] FOREIGN KEY 
	(
		[IdTipoFarmaceutico]
	) REFERENCES [dbo].[TipoFarmaceutico](
		[IdTipoFarmaceutico]
	),
	CONSTRAINT [FK_Productos_ClasTerapeutica] FOREIGN KEY 
	(
		[IdClasTerapeutica]
	) REFERENCES  [dbo].[ClasificacionTerapeutica](
		[IdClasTerapeutica]
	),
	CONSTRAINT [FK_Productos_UnidadMedida] FOREIGN KEY 
	(
		[IdUnidadMedida]
	) REFERENCES [dbo].[UnidadMedadas](
		[IdUnidadMedida]
	),
	CONSTRAINT [FK_Productos_Sexo] FOREIGN KEY 
	(
		[IdSexo]
	) REFERENCES [dbo].[Sexo](
		[IdSexo]
	),
	CONSTRAINT [FK_Productos_TipoProducto] FOREIGN KEY 
	(
		[IdTipoProducto]
	) REFERENCES  [dbo].[TipoProductos](
		[IdTipoProducto]
	)
GO