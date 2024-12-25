
CREATE PROCEDURE [dbo].[CHANGE_password]
@uid NVARCHAR(1000),
@pass VARBINARY(MAX),
@tk NVARCHAR(1000) 
AS
BEGIN
IF EXISTS (SELECT * FROM passwordchangetokens WHERE token = @tk AND userid = @uid)
BEGIN

BEGIN
UPDATE usercredentials    SET hash = @pass  WHERE id = @uid
END

BEGIN
SELECT 1
END

 

END
ELSE
BEGIN
SELECT 2
END

END