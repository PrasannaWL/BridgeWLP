CREATE TABLE [dbo].[SalesInvoiceItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceItemCode] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[ItemCode] [int] NOT NULL,
	[IssuedQuantity] [numeric](18, 3) NOT NULL,
	[ReturnedQuantity] [numeric](18, 3) NOT NULL,
	[BlockedQuantity] [numeric](18, 3) NOT NULL,
	[Rate] [numeric](18, 2) NOT NULL,
	[WarrantyExpiryDate] [smalldatetime] NULL,
	[ExtendedWarrantyExpiryDate] [smalldatetime] NULL,
	[ProductSubGroupCode] [int] NOT NULL,
	[PERate] [numeric](18, 2) NOT NULL,
	[PackageDescription] [varchar](100) NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SalesInvoiceItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]