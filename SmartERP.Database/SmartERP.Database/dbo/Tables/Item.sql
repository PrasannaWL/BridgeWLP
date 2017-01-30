CREATE TABLE [dbo].[Item](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemSalecode] [char](5) NOT NULL,
	[ItemName] [varchar](100) NOT NULL,
	[ProductClassificationCode] [int] NOT NULL,
	[ItemHeading_LookupKeyCode] [int] NOT NULL,
	[MfgListPrice] [numeric](18, 3) NOT NULL,
	[IPPriceProcesspending] [char](1) NOT NULL,
	[UOM] [varchar](25) NOT NULL,
	[ItemSource_LookupKeyCode] [int] NOT NULL,
	[ItemType_LookpKeyCode] [int] NOT NULL,
	[Serviceable] [char](1) NOT NULL,
	[SerialNumberItem] [char](1) NOT NULL,
	[DependentItemCount] [smallint] NOT NULL,
	[ItemClassificationCode] [smallint] NOT NULL,
	[BarCodeApplicable] [char](1) NOT NULL,
	[TariffNo] [varchar](20) NOT NULL,
	[CharityApplicable] [char](1) NOT NULL,
	[QtyInPacket] [int] NOT NULL,
	[WarrantyType_LookupKeyCode] [int] NOT NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]