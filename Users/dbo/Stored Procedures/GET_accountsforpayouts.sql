-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_accountsforpayouts
AS
BEGIN
SELECT id FROM userdetails WHERE status = 1
END