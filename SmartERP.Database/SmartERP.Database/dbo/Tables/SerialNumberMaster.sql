CREATE TABLE [dbo].[SerialNumberMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
[ItemCode] [int] NOT NULL,
	[SerialNumber] [varchar](100) NOT NULL,
	[Type] [char](1) NOT NULL,
	[SequenceNo] [int] NOT NULL,
	[NoOfPack] [int] NOT NULL,
	[ExciseDuty] [numeric](18, 2) NULL,
	[Cess] [numeric](18, 2) NULL,
	[EDCess] [numeric](18, 2) NULL,
	[TariffNo] [numeric](18, 2) NULL,
	[GROSS_WT] [numeric](18, 2) NULL,
	[NETT_WT] [numeric](18, 2) NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SerialNumberMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]