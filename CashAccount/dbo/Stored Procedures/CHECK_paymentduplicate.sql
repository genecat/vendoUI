-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE CHECK_paymentduplicate
@campaignid NVARCHAR(100)
AS
BEGIN
IF EXISTS (SELECT  *  FROM payment_records WHERE  campaignid = @campaignid)
SELECT 1
ELSE 
SELECT 0
END