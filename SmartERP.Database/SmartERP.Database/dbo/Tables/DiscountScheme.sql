CREATE TABLE [dbo].[DiscountScheme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
[DisountCode] [int] NOT NULL,
	[SchemeDescription] [varchar](100) NOT NULL,
	[DiscountNarration] [varchar](100) NOT NULL,
	[LedgerCode] [int] NOT NULL,
	[Remarks] [varchar](500) NULL,
	[SMSText] [varchar](1000) NULL,
	[StartDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NOT NULL,
	[ActualEndDate] [smalldatetime] NULL,
	[SchemeStatus] [char](1) NOT NULL,
	[ClosedBy] [int] NULL,
	[ClosedOn] [smalldatetime] NULL,
	[PeriodTypeCode] [tinyint] NULL,
	[CumulativeDiscount] [char](1) NOT NULL,
	[AdvanceRequired] [char](1) NOT NULL,
	[DistountApply] [char](1) NOT NULL,
	[DiscountExecutionDays] [int] NOT NULL,
	[isconsideredforProfitEarning] [char](1) NOT NULL,
	[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.DiscountScheme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]