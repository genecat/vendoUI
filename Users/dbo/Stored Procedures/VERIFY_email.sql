-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VERIFY_email]
@email NVARCHAR(100),
@token NVARCHAR(100)
AS
BEGIN
IF EXISTS (SELECT * FROM emailverificationtokens WHERE code = @token AND email = @email)
BEGIN
UPDATE emailverificationtokens
SET status = 1 WHERE code = @token AND email = @email
SELECT 1
END
ELSE
BEGIN
SELECT 0
END

END