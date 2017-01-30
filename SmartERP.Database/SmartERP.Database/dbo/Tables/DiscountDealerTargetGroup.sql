CREATE TABLE [dbo].[DiscountDealerTargetGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
[TargetType] [char](1) NOT NULL,
	[TargetSubType] [char](1) NOT NULL,
	[PeriodCode] [int] NOT NULL,
	[BranchCode] [int] NOT NULL,
	[PeriodTypeCode] [int] NOT NULL,
	[ProductClassificationCode] [int] NULL,
	[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.DiscountDealerTargetGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]