SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danzas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_danzas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_dientes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_estado_dientes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imagen_recurso](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[recurso_id] [int] NOT NULL,
	[imagen] [image] NOT NULL,
 CONSTRAINT [PK_imagen_recurso] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[piel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_piel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ciudad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_ciudad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_estado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[talle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_talle] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pelo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_pelo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ojos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_ojos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deportes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_deportes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idiomas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_idiomas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instrumentos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_instrumentos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danza_recurso](
	[recurso_id] [int] NOT NULL,
	[danza_id] [int] NOT NULL,
 CONSTRAINT [PK_danzaRecurso] PRIMARY KEY CLUSTERED 
(
	[recurso_id] ASC,
	[danza_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recurso](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[apellido] [varchar](40) NOT NULL,
	[fecha_nacimiento] [datetime] NOT NULL,
	[sexo] [char](1) NOT NULL CONSTRAINT [DF_recurso_sexo]  DEFAULT ('H'),
	[piel_id] [int] NOT NULL,
	[direccion] [varchar](40) NOT NULL,
	[codigo_postal] [varchar](50) NOT NULL,
	[barrio] [varchar](40) NOT NULL,
	[ciudad_id] [int] NOT NULL,
	[estado_id] [int] NOT NULL,
	[telefono_particular] [varchar](20) NOT NULL,
	[tel_particular_alt_1] [varchar](20) NOT NULL,
	[tel_particular_alt_2] [varchar](20) NOT NULL,
	[telefono_movil] [varchar](20) NOT NULL,
	[telefono_movil_alternativo_1] [varchar](20) NOT NULL,
	[telefono_movil_alternativo_2] [varchar](20) NOT NULL,
	[nextel] [varchar](20) NOT NULL CONSTRAINT [DF_recurso_nextel]  DEFAULT (''),
	[responsable] [varchar](40) NOT NULL,
	[documento_RG] [varchar](20) NOT NULL,
	[documento_CPF] [varchar](20) NOT NULL,
	[altura] [float] NOT NULL,
	[peso] [float] NOT NULL,
	[talle_id] [int] NOT NULL,
	[pelo_id] [int] NOT NULL,
	[ojos_id] [int] NOT NULL,
	[calzado] [float] NOT NULL,
	[estado_dientes_id] [int] NOT NULL,
	[talle_pantalon] [float] NOT NULL,
	[talle_camisa] [float] NOT NULL,
	[mail] [varchar](60) NOT NULL,
	[cuenta_bancaria] [varchar](30) NOT NULL,
	[indicador_maneja] [bit] NOT NULL,
	[indicador_tiene_registro] [bit] NOT NULL,
	[fecha_ingreso] [datetime] NOT NULL,
	[trabaja_como_extra] [bit] NOT NULL,
	[como_nos_conocio] [varchar](60) NOT NULL,
	[observaciones] [varchar](300) NOT NULL,
 CONSTRAINT [PK_recurso] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trabajo_realizado_recurso](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[recurso_id] [int] NOT NULL,
	[producto] [varchar](40) NOT NULL,
	[rol_id] [int] NOT NULL,
	[fecha_trabajo] [datetime] NOT NULL,
	[cache] [decimal](10, 2) NOT NULL,
	[productora] [varchar](40) NOT NULL,
	[fecha_pago] [datetime] NOT NULL,
 CONSTRAINT [PK_trabajo_realizado_recurso] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deporte_recurso](
	[recurso_id] [int] NOT NULL,
	[deporte_id] [int] NOT NULL,
 CONSTRAINT [PK_deporteRecurso] PRIMARY KEY CLUSTERED 
(
	[recurso_id] ASC,
	[deporte_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idioma_recurso](
	[recurso_id] [int] NOT NULL,
	[idioma_id] [int] NOT NULL,
 CONSTRAINT [PK_idioma_recurso] PRIMARY KEY CLUSTERED 
(
	[recurso_id] ASC,
	[idioma_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instrumento_recurso](
	[recurso_id] [int] NOT NULL,
	[instrumento_id] [int] NOT NULL,
 CONSTRAINT [PK_instrumento_recurso] PRIMARY KEY CLUSTERED 
(
	[recurso_id] ASC,
	[instrumento_id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[danza_recurso]  WITH CHECK ADD  CONSTRAINT [FK_danza_recurso_danzas] FOREIGN KEY([danza_id])
REFERENCES [dbo].[danzas] ([id])
GO
ALTER TABLE [dbo].[danza_recurso] CHECK CONSTRAINT [FK_danza_recurso_danzas]
GO
ALTER TABLE [dbo].[danza_recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_danza_recurso_recurso] FOREIGN KEY([recurso_id])
REFERENCES [dbo].[recurso] ([id])
GO
ALTER TABLE [dbo].[danza_recurso] CHECK CONSTRAINT [FK_danza_recurso_recurso]
GO
ALTER TABLE [dbo].[recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_recurso_ciudad] FOREIGN KEY([ciudad_id])
REFERENCES [dbo].[ciudad] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_ciudad]
GO
ALTER TABLE [dbo].[recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_recurso_estado] FOREIGN KEY([estado_id])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_estado]
GO
ALTER TABLE [dbo].[recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_recurso_estado_dientes] FOREIGN KEY([estado_dientes_id])
REFERENCES [dbo].[estado_dientes] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_estado_dientes]
GO
ALTER TABLE [dbo].[recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_recurso_ojos] FOREIGN KEY([ojos_id])
REFERENCES [dbo].[ojos] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_ojos]
GO
ALTER TABLE [dbo].[recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_recurso_pelo] FOREIGN KEY([pelo_id])
REFERENCES [dbo].[pelo] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_pelo]
GO
ALTER TABLE [dbo].[recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_recurso_piel] FOREIGN KEY([piel_id])
REFERENCES [dbo].[piel] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_piel]
GO
ALTER TABLE [dbo].[recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_recurso_talle] FOREIGN KEY([talle_id])
REFERENCES [dbo].[talle] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_talle]
GO
ALTER TABLE [dbo].[trabajo_realizado_recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_trabajo_realizado_recurso_recurso] FOREIGN KEY([recurso_id])
REFERENCES [dbo].[recurso] ([id])
GO
ALTER TABLE [dbo].[trabajo_realizado_recurso] CHECK CONSTRAINT [FK_trabajo_realizado_recurso_recurso]
GO
ALTER TABLE [dbo].[trabajo_realizado_recurso]  WITH CHECK ADD  CONSTRAINT [FK_trabajo_realizado_recurso_rol] FOREIGN KEY([rol_id])
REFERENCES [dbo].[rol] ([id])
GO
ALTER TABLE [dbo].[trabajo_realizado_recurso] CHECK CONSTRAINT [FK_trabajo_realizado_recurso_rol]
GO
ALTER TABLE [dbo].[deporte_recurso]  WITH CHECK ADD  CONSTRAINT [FK_deporte_recurso_deportes] FOREIGN KEY([deporte_id])
REFERENCES [dbo].[deportes] ([id])
GO
ALTER TABLE [dbo].[deporte_recurso] CHECK CONSTRAINT [FK_deporte_recurso_deportes]
GO
ALTER TABLE [dbo].[deporte_recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_deporte_recurso_recurso] FOREIGN KEY([recurso_id])
REFERENCES [dbo].[recurso] ([id])
GO
ALTER TABLE [dbo].[deporte_recurso] CHECK CONSTRAINT [FK_deporte_recurso_recurso]
GO
ALTER TABLE [dbo].[idioma_recurso]  WITH CHECK ADD  CONSTRAINT [FK_idioma_recurso_idiomas] FOREIGN KEY([idioma_id])
REFERENCES [dbo].[idiomas] ([id])
GO
ALTER TABLE [dbo].[idioma_recurso] CHECK CONSTRAINT [FK_idioma_recurso_idiomas]
GO
ALTER TABLE [dbo].[idioma_recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_idioma_recurso_recurso] FOREIGN KEY([recurso_id])
REFERENCES [dbo].[recurso] ([id])
GO
ALTER TABLE [dbo].[idioma_recurso] CHECK CONSTRAINT [FK_idioma_recurso_recurso]
GO
ALTER TABLE [dbo].[instrumento_recurso]  WITH CHECK ADD  CONSTRAINT [FK_instrumento_recurso_instrumentos] FOREIGN KEY([instrumento_id])
REFERENCES [dbo].[instrumentos] ([id])
GO
ALTER TABLE [dbo].[instrumento_recurso] CHECK CONSTRAINT [FK_instrumento_recurso_instrumentos]
GO
ALTER TABLE [dbo].[instrumento_recurso]  WITH NOCHECK ADD  CONSTRAINT [FK_instrumento_recurso_recurso] FOREIGN KEY([recurso_id])
REFERENCES [dbo].[recurso] ([id])
GO
ALTER TABLE [dbo].[instrumento_recurso] CHECK CONSTRAINT [FK_instrumento_recurso_recurso]
