CREATE PROCEDURE [dbo].[GET_containersforcampaignwebsite_forpublisher]
	@wid NVARCHAR(100)
AS
SELECT  id, mediafileid  FROM campaigncontainers WHERE website = @wid