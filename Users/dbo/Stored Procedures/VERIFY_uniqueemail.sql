-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE VERIFY_uniqueemail
@em NVARCHAR(200)
AS
BEGIN
IF NOT EXISTS (SELECT email FROM usercredentials WHERE email = @em)
SELECT 1
ELSE
SELECT 0
END