USE [PIZZA]
GO

/****** Object:  Table [dbo].[Quartier]    Script Date: 20/12/2018 11:33:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Quartier](
	[N°Quartier] [int] NOT NULL,
	[NomQuartier] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Quartier] PRIMARY KEY CLUSTERED 
(
	[N°Quartier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

