CREATE TABLE [dbo].[SerialNumberTransaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
[ItemCode] [int] NOT NULL,
	[SerialNumber] [varchar](100) NOT NULL,
	[DocumentTypeCode] [int] NULL,
	[DocumentNumber] [int] NULL,
	[DocumentDate] [smalldatetime] NULL,
	[BranchCode] [int] NOT NULL,
	[Rate] [numeric](18, 2) NULL,
	[StatusOfGoods] [char](1) NOT NULL,
	[Salable] [char](1) NOT NULL,
	[IsReserved] [char](1) NOT NULL,
	[CurrentRecord] [bit] NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SerialNumberTransaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]