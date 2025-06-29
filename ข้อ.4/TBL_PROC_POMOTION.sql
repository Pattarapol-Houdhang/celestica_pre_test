USE [Celestica_pre_test]
GO

/****** Object:  Table [dbo].[TBL_PROC_POMOTION]    Script Date: 6/25/2025 10:59:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TBL_PROC_POMOTION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PROMOTION_ID] [int] NULL,
	[CUSTOMER_ID] [int] NULL,
	[REDEEM_DATE] [datetime] NULL,
	[STATUS] [char](1) NULL,
 CONSTRAINT [PK_TBL_PROC_POMOTION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TBL_PROC_POMOTION]  WITH CHECK ADD  CONSTRAINT [FK_TBL_PROC_POMOTION_TBL_MST_CUSTOMER] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[TBL_MST_CUSTOMER] ([ID])
GO

ALTER TABLE [dbo].[TBL_PROC_POMOTION] CHECK CONSTRAINT [FK_TBL_PROC_POMOTION_TBL_MST_CUSTOMER]
GO

ALTER TABLE [dbo].[TBL_PROC_POMOTION]  WITH CHECK ADD  CONSTRAINT [FK_TBL_PROC_PROMOTION_TBL_MST_PROMOTION] FOREIGN KEY([PROMOTION_ID])
REFERENCES [dbo].[TBL_MST_PROMOTION] ([ID])
GO

ALTER TABLE [dbo].[TBL_PROC_POMOTION] CHECK CONSTRAINT [FK_TBL_PROC_PROMOTION_TBL_MST_PROMOTION]
GO


