-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_verificationtype
@wid NVARCHAR(100)
AS
BEGIN
SELECT verificationtype  FROM websitelisting WHERE id = @wid
END