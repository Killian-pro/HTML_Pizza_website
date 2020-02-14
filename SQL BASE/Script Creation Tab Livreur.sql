USE [PIZZA]
GO

/****** Object:  Table [dbo].[Livreur]    Script Date: 20/12/2018 11:31:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Livreur](
	[N°Livreur] [int] NOT NULL,
	[NomLivreur] [nchar](10) NOT NULL,
	[N°Quartier] [int] NOT NULL,
 CONSTRAINT [PK_Livreur] PRIMARY KEY CLUSTERED 
(
	[N°Livreur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Livreur]  WITH CHECK ADD  CONSTRAINT [FK_Livreur_Quartier] FOREIGN KEY([N°Quartier])
REFERENCES [dbo].[Quartier] ([N°Quartier])
GO

ALTER TABLE [dbo].[Livreur] CHECK CONSTRAINT [FK_Livreur_Quartier]
GO

