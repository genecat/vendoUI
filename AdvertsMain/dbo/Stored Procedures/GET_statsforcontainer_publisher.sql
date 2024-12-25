CREATE PROCEDURE [dbo].[GET_statsforcontainer_publisher]
	@campaigncontainer NVARCHAR(100)
AS
SELECT (SELECT COUNT(*)   FROM ImageAdvertsClicks WHERE container = @campaigncontainer AND confirmed != 3), (SELECT SUM(value * (commission/100))   FROM ImageAdvertsClicks WHERE container = @campaigncontainer AND confirmed != 3), (SELECT COUNT(*) FROM ImpressionTable WHERE AdServed = @campaigncontainer)