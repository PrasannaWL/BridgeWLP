CREATE TABLE [dbo].[AccountLedgerSummary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
[BranchCode] [int] NOT NULL,
	[LedgerCode] [int] NOT NULL,
	[CurrentBalance] [numeric](18, 2) NOT NULL,
	[CurrentbalanceNature] [char](1) NULL,
	[CurrentAdvanceBalance] [numeric](18, 2) NOT NULL,
	[CurrentMPOAdvance] [numeric](18, 2) NOT NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.AccountLedgerSummary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]