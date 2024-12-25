-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UPDATE_listingstatustosuspended
@wid NVARCHAR(100)
AS
BEGIN
UPDATE websitelisting SET status = 2 WHERE id = @wid
END