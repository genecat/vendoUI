-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_cashaccountbyid
@uid NVARCHAR(100)
AS
BEGIN
SELECT id FROM accounts WHERE userid = @uid
END