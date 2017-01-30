CREATE TABLE [dbo].[SalesInvoiceDiscounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceDiscountCode] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DiscountCode] [int] NOT NULL,
	[Amount] [numeric](18, 2) NOT NULL,
	[ReturnedAmount] [numeric](18, 2) NOT NULL,
	[DiscountApply] [char](1) NOT NULL,
	[DiscountPercentage] [numeric](18, 2) NOT NULL,
	[IsConsideredForPE] [char](1) NOT NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SalesInvoiceDiscounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]