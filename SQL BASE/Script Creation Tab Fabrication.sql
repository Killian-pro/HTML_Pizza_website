USE [PIZZA]
GO

/****** Object:  Table [dbo].[Fabrication]    Script Date: 20/12/2018 11:24:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fabrication](
	[N°Fab] [int] NOT NULL,
	[N°Pizza] [int] NOT NULL,
	[QuantitéFab] [int] NOT NULL,
	[Date Fab] [datetime] NOT NULL,
 CONSTRAINT [PK_Fabrication] PRIMARY KEY CLUSTERED 
(
	[N°Fab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Fabrication]  WITH CHECK ADD  CONSTRAINT [FK_Fabrication_CataloguePizza] FOREIGN KEY([N°Pizza])
REFERENCES [dbo].[CataloguePizza] ([N°Pizza])
GO

ALTER TABLE [dbo].[Fabrication] CHECK CONSTRAINT [FK_Fabrication_CataloguePizza]
GO

