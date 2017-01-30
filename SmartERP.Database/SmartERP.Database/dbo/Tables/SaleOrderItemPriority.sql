CREATE TABLE [dbo].[SaleOrderItemPriority](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PriorityCode] [int] NOT NULL,
	[OrderNo] [int] NOT NULL,
	[orderTypeCode] [smallint] NOT NULL,
	[Itemcode] [int] NOT NULL,
	[AlottedQty] [numeric](18, 3) NOT NULL,
	[RemainingQty] [numeric](18, 3) NOT NULL,
	[PriorityNo] [int] NOT NULL,
	[AllotedDate] [smalldatetime] NOT NULL,
	[TBBQty] [numeric](18, 3) NOT NULL,
	[NoofTimeAlotted] [int] NOT NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SaleOrderItemPriority] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]