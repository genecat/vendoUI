-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE CHECK_ifwebsitebudgetenough
@cpc int,
@wid NVARCHAR(100)
AS
BEGIN
IF ((SELECT budget FROM campaignwebsites WHERE id = @wid) >= @cpc)
SELECT 1
ELSE
SELECT 0
END