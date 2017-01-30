CREATE TABLE [dbo].[SalesOrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDcode] [int] NOT NULL,
	[OrderNo] [int] NOT NULL,
	[ItemCode] [int] NOT NULL,
	[OrderedQuantity] [numeric](18, 2) NOT NULL,
	[ListRate] [numeric](18, 2) NOT NULL,
	[TradeDiscount] [numeric](18, 2) NOT NULL,
	[FlexiTradeDiscount] [numeric](18, 2) NOT NULL,
	[Rate] [numeric](18, 2) NOT NULL,
	[BillValue] [numeric](18, 2) NOT NULL,
	[TaxSubTypeCode] [int] NOT NULL,
	[TaxTemplateCode] [int] NOT NULL,
	[TotalCancelledQuantity] [numeric](18, 3) NOT NULL,
	[ReasonforCancellation] [numeric](18, 3) NOT NULL,
	[LastCancelledQuantity] [numeric](18, 3) NOT NULL,
	[HandlingCharges] [numeric](18, 2) NOT NULL,
	[Charity] [numeric](18, 2) NOT NULL,
	[ExpiryDate] [smalldatetime] NULL,
	[BilledQuantity] [numeric](18, 3) NOT NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SalesOrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]