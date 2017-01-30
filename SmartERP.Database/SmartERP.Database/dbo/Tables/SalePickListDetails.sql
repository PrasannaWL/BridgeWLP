﻿CREATE TABLE [dbo].[SalePickListDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PickListHeaderCode] [int] NOT NULL,
	[ItemCode] [int] NOT NULL,
	[PickListQuantity] [numeric](18, 3) NOT NULL,
	[ispackedItem] [char](1) NOT NULL,
	[Iscancelled] [char](1) NOT NULL,
	[CancelledReason] [varchar](256) NULL,
	[CancelledDate] [smalldatetime] NULL,
	[CancelledBy] [int] NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SalePickListDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]