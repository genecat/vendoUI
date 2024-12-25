-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_balance
@uid NVARCHAR(100)
AS
BEGIN
	SELECT value FROM accounts WHERE userid = @uid
END