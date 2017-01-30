CREATE TABLE [dbo].[SalesOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [int] NOT NULL,
	[BranchCode] [int] NOT NULL,
	[DMSOrderNo] [int] NOT NULL,
	[DMSOrderDate] [smalldatetime] NOT NULL,
	[DealerCode] [int] NOT NULL,
	[TransportCode] [int] NOT NULL,
	[BookingPlace] [varchar](250) NULL,
	[ExpiryDate] [smalldatetime] NOT NULL,
	[ReconfirmationFlag] [char](1) NOT NULL,
	[ReconfirmationCount] [tinyint] NOT NULL,
	[LastReconfirmedDate] [smalldatetime] NULL,
	[CommittedDeliveryDate] [smalldatetime] NULL,
	[IsCancelled] [char](1) NOT NULL,
	[CancelledBy] [int] NULL,
	[CancellationRemarks] [varchar](100) NULL,
	[IsOrderClosed] [char](1) NOT NULL,
	[OrderTypeCode] [smallint] NULL,
	[IRFRaisedFlag] [char](1) NOT NULL,
	[IRFDate] [smalldatetime] NULL,
	[OrderSoruce] [char](1) NOT NULL,
	[PriorityType] [char](1) NOT NULL,
	[BillingValue] [numeric](18, 2) NOT NULL,
	[MPOAdvance] [numeric](18, 2) NULL,
	[LastMPOAdavnceDate] [smalldatetime] NULL,
	[MPADiscount] [char](1) NOT NULL,
	[UsedMPOAdvance] [numeric](18, 2) NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SalesOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]