USE [PIZZA]
GO

/****** Object:  Table [dbo].[Livraison]    Script Date: 20/12/2018 11:31:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Livraison](
	[N°Livraison] [int] NOT NULL,
	[N°BonLiv] [int] NOT NULL,
	[Date Depart] [datetime] NOT NULL,
	[Date Arrive] [datetime] NOT NULL,
	[N°Quartier] [int] NOT NULL,
	[AdresseLiv] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Livraison] PRIMARY KEY CLUSTERED 
(
	[N°Livraison] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Livraison]  WITH CHECK ADD  CONSTRAINT [FK_Livraison_BonLiv] FOREIGN KEY([N°BonLiv])
REFERENCES [dbo].[BonLiv] ([N°BonLiv])
GO

ALTER TABLE [dbo].[Livraison] CHECK CONSTRAINT [FK_Livraison_BonLiv]
GO

ALTER TABLE [dbo].[Livraison]  WITH CHECK ADD  CONSTRAINT [FK_Livraison_Quartier] FOREIGN KEY([N°Quartier])
REFERENCES [dbo].[Quartier] ([N°Quartier])
GO

ALTER TABLE [dbo].[Livraison] CHECK CONSTRAINT [FK_Livraison_Quartier]
GO

