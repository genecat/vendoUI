-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE CHECK_ifemailverified
@uid NVARCHAR(100)
AS
BEGIN
SELECT status FROM emailverificationtokens WHERE userid = @uid
END