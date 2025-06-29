USE [Celestica_pre_test]
GO

/****** Object:  Table [dbo].[TBL_MST_PROMOTION]    Script Date: 6/25/2025 10:58:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TBL_MST_PROMOTION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PROMOTION_NAME] [nvarchar](100) NULL,
	[PROMOTION_DESCRIPTION] [nvarchar](200) NULL,
	[PROMOTION_PRICE] [decimal](18, 2) NULL,
	[START_DATE] [datetime] NULL,
	[END_DATE] [datetime] NULL,
	[REMAINS] [int] NULL,
	[MIN_RANK] [int] NULL,
	[STATUS] [char](1) NULL,
	[CREATED_BY] [nvarchar](200) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_BY] [nvarchar](200) NULL,
	[UPDATED_DATE] [datetime] NULL,
 CONSTRAINT [PK_TBL_PROMOTION_MASTER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


