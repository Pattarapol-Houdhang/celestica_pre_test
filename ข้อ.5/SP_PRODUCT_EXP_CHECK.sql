-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SP_PRODUCT_EXP_CHECK
	-- Add the parameters for the stored procedure here
	
	@PRODUCT_NAME NVARCHAR(200),
	@PROCTION_DATE DATE,
	@EXP_DATE DATE

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	DECLARE @PRODUCT_AGE INT = 0

	SET @PRODUCT_AGE = DATEDIFF(DAY,GETDATE(),@EXP_DATE)

	SELECT @PRODUCT_NAME AS [Name],@PRODUCT_AGE AS [Aging],CASE WHEN @PRODUCT_AGE < 0 THEN 'Expired' ELSE 'Not Expired' END AS IsExpired
END
GO
 

 