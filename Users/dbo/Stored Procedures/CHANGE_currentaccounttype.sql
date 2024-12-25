-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE CHANGE_currentaccounttype
@token NVARCHAR(550),
@newtype int
AS
BEGIN
UPDATE authtokens SET currentaccount = @newtype WHERE token = @token
END