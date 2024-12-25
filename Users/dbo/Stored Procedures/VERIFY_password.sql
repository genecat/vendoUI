-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VERIFY_password]
@uid UNIQUEIDENTIFIER,
@hs VARBINARY(MAX)
AS
BEGIN
 	SET NOCOUNT ON;
SELECT hash FROM usercredentials WHERE id = @uid
END