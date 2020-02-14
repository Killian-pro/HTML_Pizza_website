USE [PIZZA]
GO

/****** Object:  Table [dbo].[LignesCdeClient]    Script Date: 20/12/2018 11:27:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LignesCdeClient](
	[N°LigneCde] [int] NOT NULL,
	[N°CdeClient] [int] NOT NULL,
	[N°Pizza] [int] NOT NULL,
	[Quantité] [int] NOT NULL,
 CONSTRAINT [PK_LignesCdeClient] PRIMARY KEY CLUSTERED 
(
	[N°LigneCde] ASC,
	[N°CdeClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[LignesCdeClient]  WITH CHECK ADD  CONSTRAINT [FK_LignesCdeClient_CataloguePizza] FOREIGN KEY([N°Pizza])
REFERENCES [dbo].[CataloguePizza] ([N°Pizza])
GO

ALTER TABLE [dbo].[LignesCdeClient] CHECK CONSTRAINT [FK_LignesCdeClient_CataloguePizza]
GO

ALTER TABLE [dbo].[LignesCdeClient]  WITH CHECK ADD  CONSTRAINT [FK_LignesCdeClient_CdeClient] FOREIGN KEY([N°CdeClient])
REFERENCES [dbo].[CdeClient] ([N°CdeClient])
GO

ALTER TABLE [dbo].[LignesCdeClient] CHECK CONSTRAINT [FK_LignesCdeClient_CdeClient]
GO

