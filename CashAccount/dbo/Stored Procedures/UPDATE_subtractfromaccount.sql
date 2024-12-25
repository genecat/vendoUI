-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_subtractfromaccount]
@uid NVARCHAR(50),
@amnt int
AS
BEGIN
 IF (SELECT value FROM accounts WHERE userid = @uid) >= @amnt

UPDATE accounts SET value -= @amnt OUTPUT 1
WHERE userid = @uid AND value >= @amnt

ELSE
BEGIN
SELECT 0
END
END