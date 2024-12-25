-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_clicks_byforcampaigncontainer
@cn NVARCHAR(100)
AS
BEGIN
SELECT COUNT(*)  FROM ImageAdvertsClicks WHERE container = @cn AND confirmed = 1
END