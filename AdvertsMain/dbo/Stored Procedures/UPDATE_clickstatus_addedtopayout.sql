-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  UPDATE_clickstatus_addedtopayout
@clid NVARCHAR(100)
AS
BEGIN
UPDATE ImageAdvertsClicks SET confirmed = 3 WHERE Id = @clid
END