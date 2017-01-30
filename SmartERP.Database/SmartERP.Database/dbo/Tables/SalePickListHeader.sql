CREATE TABLE [dbo].[SalePickListHeader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PickListHeaderCode] [int] NOT NULL,
	[Type] [char](1) NOT NULL,
	[OrderNo] [int] NULL,
	[StockTransferCode] [int] NULL,
	[BarCodeEnabled] [char](1) NOT NULL,
	[Transportcode] [int] NULL,
	[BookingPlace] [varchar](256) NULL,
	[InvoiceStatus] [char](1) NOT NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SalePickListHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]