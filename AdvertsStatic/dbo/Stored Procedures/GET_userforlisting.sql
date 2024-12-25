-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_userforlisting
@lid NVARCHAR(100)
AS
BEGIN
SELECT userid FROM websitelisting WHERE id = @lid
END