﻿CREATE TABLE [dbo].[DiscountSchemePercentage_SlabModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DiscountSchemeCode] [int] NOT NULL,
	[GradeCode] [int] NULL,
	[SlabNo] [int] NOT NULL,
	[StartValue] [int] NOT NULL,
	[EndValue] [int] NOT NULL,
	[DiscountPercentage] [numeric](18, 2) NOT NULL,
	[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.DiscountSchemePercentage_SlabModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]