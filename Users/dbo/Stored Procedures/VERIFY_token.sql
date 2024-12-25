-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VERIFY_token]
@tk NVARCHAR(512)
AS
BEGIN
SELECT userid,currentaccount FROM authtokens WHERE token = @tk

END