USE [alternativa]
GO
/****** Objeto:  Table [dbo].[companiaTelefono]    Fecha de la secuencia de comandos: 11/01/2012 19:46:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[companiaTelefono](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](30) COLLATE Modern_Spanish_CI_AS NOT NULL,
 CONSTRAINT [PK_compania] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF

ALTER TABLE recurso ADD comp_telefono_particular int NULL
ALTER TABLE recurso ADD comp_tel_particular_alt_1 int NULL
ALTER TABLE recurso ADD comp_tel_particular_alt_2 int NULL
ALTER TABLE recurso ADD comp_telefono_movil int NULL
ALTER TABLE recurso ADD comp_telefono_movil_alt_1 int NULL
ALTER TABLE recurso ADD comp_telefono_movil_alt_2 int NULL

USE [alternativa]
GO
ALTER TABLE [dbo].[recurso]  WITH CHECK ADD  CONSTRAINT [FK_recurso_companiaTelefono_part] FOREIGN KEY([comp_telefono_particular])
REFERENCES [dbo].[companiaTelefono] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_companiaTelefono_part]

USE [alternativa]
GO
ALTER TABLE [dbo].[recurso]  WITH CHECK ADD  CONSTRAINT [FK_recurso_companiaTelefono_partAlt1] FOREIGN KEY([comp_tel_particular_alt_1])
REFERENCES [dbo].[companiaTelefono] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_companiaTelefono_partAlt1]

USE [alternativa]
GO
ALTER TABLE [dbo].[recurso]  WITH CHECK ADD  CONSTRAINT [FK_recurso_companiaTelefono_partAlt2] FOREIGN KEY([comp_tel_particular_alt_2])
REFERENCES [dbo].[companiaTelefono] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_companiaTelefono_partAlt2]

USE [alternativa]
GO
ALTER TABLE [dbo].[recurso]  WITH CHECK ADD  CONSTRAINT [FK_recurso_companiaTelefono_mov] FOREIGN KEY([comp_telefono_movil])
REFERENCES [dbo].[companiaTelefono] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_companiaTelefono_mov]

USE [alternativa]
GO
ALTER TABLE [dbo].[recurso]  WITH CHECK ADD  CONSTRAINT [FK_recurso_companiaTelefono_mov1] FOREIGN KEY([comp_telefono_movil_alt_1])
REFERENCES [dbo].[companiaTelefono] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_companiaTelefono_mov1]

USE [alternativa]
GO
ALTER TABLE [dbo].[recurso]  WITH CHECK ADD  CONSTRAINT [FK_recurso_companiaTelefono_mov2] FOREIGN KEY([comp_telefono_movil_alt_2])
REFERENCES [dbo].[companiaTelefono] ([id])
GO
ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK_recurso_companiaTelefono_mov2]