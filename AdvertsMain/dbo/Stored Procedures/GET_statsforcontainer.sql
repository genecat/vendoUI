-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_statsforcontainer]
@campaigncontainer NVARCHAR(100)
AS
BEGIN
SELECT (SELECT COUNT(*)   FROM ImageAdvertsClicks WHERE container = @campaigncontainer AND confirmed != 3), (SELECT AVG(value)   FROM ImageAdvertsClicks WHERE container = @campaigncontainer AND confirmed != 3), (SELECT COUNT(*) FROM ImpressionTable WHERE AdServed = @campaigncontainer)
END