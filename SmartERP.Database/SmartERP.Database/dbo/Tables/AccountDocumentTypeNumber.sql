CREATE TABLE [dbo].[AccountDocumentTypeNumber](
	[Id] [int] IDENTITY(1,1) NOT NULL,
[BranchCode] [int] NOT NULL,
	[DocumentTypeCode] [int] NOT NULL,
	[PeriodCode] [int] NOT NULL,
	[StartingNo] [int] NOT NULL,
	[LastNumber] [int] NOT NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.AccountDocumentTypeNumber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]