﻿
CREATE TABLE [dbo].[RoleUser](
[Id] [int] IDENTITY(1,1) NOT NULL,
[RoleCode] [int] NOT NULL,
[UserCode] [int] NOT NULL,
[BranchCode] [int] NOT NULL,
[CreatedTimeStamp][datetime] NOT NULL,
[UpdatedTimeStamp][datetime] NOT NULL,
[CreatedBy] [varchar](max) NULL,
[UpdatedBy] [varchar](max) NULL,
[IsActive][bit] NULL,


 CONSTRAINT [PK_dbo.RoleUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO