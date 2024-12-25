CREATE PROCEDURE [dbo].[GET_campaignwebsitesforlisting_forpublisher]
	@lid NVARCHAR(100)
AS
select  id, status  FROM campaignwebsites WHERE website = @lid AND status != 0