USE [examen]
GO


CREATE PROCEDURE [dbo].[sp_transaccionesDelete]
(
	@id_transacciones int
)

AS

SET NOCOUNT ON

DELETE FROM [transacciones]
WHERE [id_transacciones] = @id_transacciones

GO
/****** Object:  StoredProcedure [dbo].[sp_transaccionesInsert]    Script Date: 11/06/2016 1:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transaccionesInsert]
(
	@id_categoria int,
	@monto varchar(50),
	@fecha date,
	@descripcion varchar(50),
	@id_cuenta int
)

AS

SET NOCOUNT ON

INSERT INTO [transacciones]
(
	[id_categoria],
	[monto],
	[fecha],
	[descripcion],
	[id_cuenta]
)
VALUES
(
	@id_categoria,
	@monto,
	@fecha,
	@descripcion,
	@id_cuenta
)

SELECT CAST(scope_identity() AS int)

GO
/****** Object:  StoredProcedure [dbo].[sp_transaccionesSelect]    Script Date: 11/06/2016 1:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transaccionesSelect]
(
	@id_transacciones int
)

AS

SET NOCOUNT ON

SELECT [id_transacciones],
	[id_categoria],
	[monto],
	[fecha],
	[descripcion],
	[id_cuenta]
FROM [transacciones]
WHERE [id_transacciones] = @id_transacciones

GO
/****** Object:  StoredProcedure [dbo].[sp_transaccionesSelectAll]    Script Date: 11/06/2016 1:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transaccionesSelectAll]

AS

SET NOCOUNT ON

SELECT [id_transacciones],
	[id_categoria],
	[monto],
	[fecha],
	[descripcion],
	[id_cuenta]
FROM [transacciones]

GO
/****** Object:  StoredProcedure [dbo].[sp_transaccionesUpdate]    Script Date: 11/06/2016 1:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transaccionesUpdate]
(
	@id_transacciones int,
	@id_categoria int,
	@monto varchar(50),
	@fecha date,
	@descripcion varchar(50),
	@id_cuenta int
)

AS

SET NOCOUNT ON

UPDATE [transacciones]
SET [id_categoria] = @id_categoria,
	[monto] = @monto,
	[fecha] = @fecha,
	[descripcion] = @descripcion,
	[id_cuenta] = @id_cuenta
WHERE [id_transacciones] = @id_transacciones

GO
/****** Object:  StoredProcedure [dbo].[sp_transferenciasDelete]    Script Date: 11/06/2016 1:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transferenciasDelete]
(
	@id_transferencia int
)

AS

SET NOCOUNT ON

DELETE FROM [transferencias]
WHERE [id_transferencia] = @id_transferencia

GO
/****** Object:  StoredProcedure [dbo].[sp_transferenciasInsert]    Script Date: 11/06/2016 1:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transferenciasInsert]
(
	@monto varchar(50),
	@feha varchar(50),
	@descripcion varchar(200),
	@cuentaOrigen int,
	@cuentaDestino int
)

AS

SET NOCOUNT ON

INSERT INTO [transferencias]
(
	[monto],
	[feha],
	[descripcion],
	[cuentaOrigen],
	[cuentaDestino]
)
VALUES
(
	@monto,
	@feha,
	@descripcion,
	@cuentaOrigen,
	@cuentaDestino
)

SELECT CAST(scope_identity() AS int)

GO
/****** Object:  StoredProcedure [dbo].[sp_transferenciasSelect]    Script Date: 11/06/2016 1:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transferenciasSelect]
(
	@id_transferencia int
)

AS

SET NOCOUNT ON

SELECT [id_transferencia],
	[monto],
	[feha],
	[descripcion],
	[cuentaOrigen],
	[cuentaDestino]
FROM [transferencias]
WHERE [id_transferencia] = @id_transferencia

GO
/****** Object:  StoredProcedure [dbo].[sp_transferenciasSelectAll]    Script Date: 11/06/2016 1:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transferenciasSelectAll]

AS

SET NOCOUNT ON

SELECT [id_transferencia],
	[monto],
	[feha],
	[descripcion],
	[cuentaOrigen],
	[cuentaDestino]
FROM [transferencias]

GO
/****** Object:  StoredProcedure [dbo].[sp_transferenciasUpdate]    Script Date: 11/06/2016 1:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_transferenciasUpdate]
(
	@id_transferencia int,
	@monto varchar(50),
	@feha varchar(50),
	@descripcion varchar(200),
	@cuentaOrigen int,
	@cuentaDestino int
)

AS

SET NOCOUNT ON

UPDATE [transferencias]
SET [monto] = @monto,
	[feha] = @feha,
	[descripcion] = @descripcion,
	[cuentaOrigen] = @cuentaOrigen,
	[cuentaDestino] = @cuentaDestino
WHERE [id_transferencia] = @id_transferencia

GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 11/06/2016 1:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO


CREATE TABLE [dbo].[transacciones](
	[id_transacciones] [int] IDENTITY(1,1) NOT NULL,
	[id_categoria] [int] NOT NULL,
	[monto] [varchar](50) NOT NULL,
	[fecha] [date] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[id_cuenta] [int] NOT NULL,
 CONSTRAINT [PK_transacciones] PRIMARY KEY CLUSTERED 
(
	[id_transacciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[transferencias]    Script Date: 11/06/2016 1:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[transferencias](
	[id_transferencia] [int] IDENTITY(1,1) NOT NULL,
	[monto] [varchar](50) NOT NULL,
	[feha] [date] NOT NULL,
	[descripcion] [varchar](200) NOT NULL,
	[cuentaOrigen] [int] NOT NULL,
	[cuentaDestino] [int] NOT NULL,
 CONSTRAINT [PK_transferencias] PRIMARY KEY CLUSTERED 
(
	[id_transferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cuenta] ON 

INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (2, N'sssss', 22)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (3, N'gerimar', 6841)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (4, N'asdasd', 46594)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (5, N'asdasd', 46594)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (6, N'asdasd', 46594)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (7, N'asdasd', 46594)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (8, N'asdasd', 46594)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (9, N'asdasd', 46594)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (10, N'asdasd', 46594)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (11, N'sasdasd', 46594)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (12, N'asdasd', 46594)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (13, N'asdasd', 46594)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (14, N'asdasd', 46594)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (17, N'miguel', 22)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (18, N'miguelas', 22)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (19, N'miguelas', 22)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (20, N'miguelas', 22)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (21, N'miguelas', 22)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (22, N'miguelassssssss', 22)
INSERT [dbo].[cuenta] ([id_cuenta], [nombre_cuenta], [saldo_inicial]) VALUES (23, N'miguelas', 22)
SET IDENTITY_INSERT [dbo].[cuenta] OFF
ALTER TABLE [dbo].[transacciones]  WITH CHECK ADD  CONSTRAINT [FK_transacciones_Categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[Categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[transacciones] CHECK CONSTRAINT [FK_transacciones_Categoria]
GO
ALTER TABLE [dbo].[transacciones]  WITH CHECK ADD  CONSTRAINT [FK_transacciones_cuenta] FOREIGN KEY([id_cuenta])
REFERENCES [dbo].[cuenta] ([id_cuenta])
GO
ALTER TABLE [dbo].[transacciones] CHECK CONSTRAINT [FK_transacciones_cuenta]
GO
ALTER TABLE [dbo].[transferencias]  WITH CHECK ADD  CONSTRAINT [FK_transferencias_cuenta] FOREIGN KEY([cuentaOrigen])
REFERENCES [dbo].[cuenta] ([id_cuenta])
GO
ALTER TABLE [dbo].[transferencias] CHECK CONSTRAINT [FK_transferencias_cuenta]
GO
ALTER TABLE [dbo].[transferencias]  WITH CHECK ADD  CONSTRAINT [FK_transferencias_cuenta1] FOREIGN KEY([cuentaDestino])
REFERENCES [dbo].[cuenta] ([id_cuenta])
GO
ALTER TABLE [dbo].[transferencias] CHECK CONSTRAINT [FK_transferencias_cuenta1]
GO
