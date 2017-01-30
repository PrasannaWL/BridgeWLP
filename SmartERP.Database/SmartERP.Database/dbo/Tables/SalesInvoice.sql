﻿CREATE TABLE [dbo].[SalesInvoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[BranchCode] [int] NOT NULL,
	[DocumentTypeCode] [int] NOT NULL,
	[DocumentNumber] [int] NOT NULL,
	[DocumentDate] [smalldatetime] NOT NULL,
	[orderno] [int] NOT NULL,
	[orderdate] [smalldatetime] NOT NULL,
	[DealerCode] [int] NOT NULL,
	[TaxSubTypeCode] [int] NOT NULL,
	[IsThroughAdvance] [char](1) NOT NULL,
	[TransportCode] [int] NOT NULL,
	[DestinationAddressCode] [int] NOT NULL,
	[LRRRNumber] [varchar](20) NULL,
	[LRRRDate] [smalldatetime] NULL,
	[PackageCount] [int] NOT NULL,
	[VehicleNumber] [varchar](20) NULL,
	[FormType] [int] NOT NULL,
	[FormNumber] [varchar](20) NULL,
	[FormDate] [smalldatetime] NULL,
	[TotalValue] [numeric](18, 2) NOT NULL,
	[GCD] [int] NOT NULL,
	[ICD] [int] NOT NULL,
	[BCD] [int] NOT NULL,
	[PrintCount] [tinyint] NOT NULL,
	[IsCancelled] [char](1) NOT NULL,
	[CancelledUser] [int] NULL,
	[CancelledDate] [smalldatetime] NULL,
	[CancellationRemarks] [varchar](200) NULL,
	[IsFullyReturned] [char](1) NOT NULL,
	[ProductTotal] [int] NOT NULL,
	[SettledDate] [smalldatetime] NULL,
	[BusinessCenterCode] [int] NOT NULL,
	[RepresentativeCode] [int] NULL,
	[AdditionalPrintApprovalStatus] [char](1) NULL,
	[AdditionalPrintApprovedby] [int] NULL,
	[DeviatedTransportCode] [int] NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SalesInvoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]