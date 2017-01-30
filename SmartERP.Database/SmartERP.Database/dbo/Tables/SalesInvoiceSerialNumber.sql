CREATE TABLE [dbo].[SalesInvoiceSerialNumber](
	[Id] [int] IDENTITY(1,1) NOT NULL,
[InvoiceNo] [int] NOT NULL,
	[ItemCode] [int] NOT NULL,
	[SerialNumber] [varchar](100) NOT NULL,
	[IsReturned] [char](1) NOT NULL,
	[IsReserved] [char](1) NOT NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SalesInvoiceSerialNumber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]