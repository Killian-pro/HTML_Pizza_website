USE [PIZZA]
GO

/****** Object:  Table [dbo].[Paiement Fact Client]    Script Date: 20/12/2018 11:32:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Paiement Fact Client](
	[N°PieceComptable] [int] NOT NULL,
	[N°Facture] [int] NOT NULL,
	[Date Facture] [date] NOT NULL,
 CONSTRAINT [PK_Paiement Fact Client] PRIMARY KEY CLUSTERED 
(
	[N°PieceComptable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Paiement Fact Client]  WITH CHECK ADD  CONSTRAINT [FK_Paiement Fact Client_Facture Client-BonLiv] FOREIGN KEY([N°Facture])
REFERENCES [dbo].[Facture Client-BonLiv] ([N°Facture])
GO

ALTER TABLE [dbo].[Paiement Fact Client] CHECK CONSTRAINT [FK_Paiement Fact Client_Facture Client-BonLiv]
GO

