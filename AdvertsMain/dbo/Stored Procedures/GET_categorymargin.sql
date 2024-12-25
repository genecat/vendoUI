-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  GET_categorymargin
@catid int
AS
BEGIN
SELECT (SELECT range_to FROM ClickRateTable	WHERE id = @catid) - (SELECT range_from FROM ClickRateTable	WHERE id = @catid)
END