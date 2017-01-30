CREATE TABLE [dbo].[Discounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DiscountName] [varchar](100) NOT NULL,
	[DiscountPriority] [int] NOT NULL,
	[ConsiderProfitEarning] [char](1) NOT NULL,
	[DefaultLedgerCode] [int] NULL,
	[SchemeType] [char](1) NOT NULL,
	[DiscountPercentageModel] [smallint] NOT NULL,
	[SlabModelExecutionCode] [smallint] NULL,
	[SingleDataModelExecutionCode] [smallint] NULL,
	[DiscountApplyOn] [char](1) NULL,
	[ConsiderQtyValueFrom] [char](1) NULL,
	[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.Discounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]