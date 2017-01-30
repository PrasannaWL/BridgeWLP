CREATE TABLE [dbo].[SalesOrderItemPriorityTracking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PriorityCode] [int] NOT NULL,
	[AllocatedDate] [smalldatetime] NOT NULL,
	[AllocatedQty] [numeric](18, 3) NOT NULL,
	[ExpiryDate] [smalldatetime] NULL,
	[Expired] [char](1) NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL

 CONSTRAINT [PK_dbo.SalesOrderItemPriorityTracking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]