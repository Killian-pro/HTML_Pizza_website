USE [PIZZA]
GO

/****** Object:  Table [dbo].[CataloguePizza]    Script Date: 20/12/2018 11:22:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CataloguePizza](
	[N°Pizza] [int] NOT NULL,
	[NomPizza] [nchar](10) NOT NULL,
	[TaillePizza] [int] NOT NULL,
	[PrixPizza] [money] NOT NULL,
 CONSTRAINT [PK_CataloguePizza] PRIMARY KEY CLUSTERED 
(
	[N°Pizza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

