-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_currentaccounttype
@token NVARCHAR(550)
AS
BEGIN
SELECT currentaccount  FROM authtokens WHERE token = @token
END