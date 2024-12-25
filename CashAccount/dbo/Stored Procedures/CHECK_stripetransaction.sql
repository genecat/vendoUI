-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE CHECK_stripetransaction
@pid NVARCHAR(100),
@amnt int
AS
BEGIN
SELECT accountid FROM deposit_transactions WHERE id = @pid AND value = @amnt
END