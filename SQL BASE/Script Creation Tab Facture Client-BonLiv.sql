USE [PIZZA]
GO

/****** Object:  Table [dbo].[Facture Client-BonLiv]    Script Date: 20/12/2018 11:25:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Facture Client-BonLiv](
	[N°Facture] [int] NOT NULL,
	[N°BonLiv] [int] NOT NULL,
	[Date Facture] [date] NOT NULL,
	[Montant Total] [money] NOT NULL,
	[N°Client] [int] NULL,
 CONSTRAINT [PK_Facture Client-BonLiv] PRIMARY KEY CLUSTERED 
(
	[N°Facture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Facture Client-BonLiv]  WITH CHECK ADD  CONSTRAINT [FK_Facture Client-BonLiv_BonLiv] FOREIGN KEY([N°BonLiv])
REFERENCES [dbo].[BonLiv] ([N°BonLiv])
GO

ALTER TABLE [dbo].[Facture Client-BonLiv] CHECK CONSTRAINT [FK_Facture Client-BonLiv_BonLiv]
GO

