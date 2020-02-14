USE [PIZZA]
GO

/****** Object:  Table [dbo].[Adresse]    Script Date: 20/12/2018 11:20:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Adresse](
	[N°Adresse] [int] NOT NULL,
	[Adresse] [nvarchar](50) NOT NULL,
	[N°Quartier] [int] NOT NULL,
 CONSTRAINT [PK_Adresse] PRIMARY KEY CLUSTERED 
(
	[N°Adresse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Adresse]  WITH CHECK ADD  CONSTRAINT [FK_Adresse_Quartier] FOREIGN KEY([N°Quartier])
REFERENCES [dbo].[Quartier] ([N°Quartier])
GO

ALTER TABLE [dbo].[Adresse] CHECK CONSTRAINT [FK_Adresse_Quartier]
GO

