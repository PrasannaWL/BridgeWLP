CREATE TABLE [dbo].[Dealer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DealerCode] [int] NOT NULL,
	[LedgerCode] [int] NOT NULL,
	[BranchCode] [int] NOT NULL,
	[BusinessCenterCode] [int] NOT NULL,
	[PartyType] [char](1) NOT NULL,
	[DealerCategoryCode] [int] NOT NULL,
	[WofklowStatusCode] [int] NOT NULL,
	[DepositLegerCode] [int] NOT NULL,
	[DealerName] [varchar](100) NOT NULL,
	[AddressCode] [int] NOT NULL,
	[PropName] [varchar](100) NULL,
	[EmailID] [varchar](100) NULL,
	[VATNo] [varchar](20) NULL,
	[CSTNo] [varchar](20) NULL,
	[CSTDate] [smalldatetime] NULL,
	[CentralExciseNo] [varchar](20) NULL,
	[CentralExciseDate] [smalldatetime] NULL,
	[TransportCodes] [varchar](256) NOT NULL,
	[TaxTypeCode] [smallint] NOT NULL,
	[TaxSubTypeCodes] [smallint] NOT NULL,
	[OnlinePaymentOnly] [char](1) NOT NULL,
	[ECMS_VirtualAccountNo] [char](15) NULL,
	[MaxChequeValuePerDay] [numeric](18, 2) NOT NULL,
	[ManagerVistDate] [smalldatetime] NULL,
	[BankCodes] [varchar](256) NULL,
	[DealerDiscountControls_ProductClassificationType] [smallint] NOT NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.Dealer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]