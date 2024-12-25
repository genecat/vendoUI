CREATE PROCEDURE [dbo].[GET_CategoryByCampaignContainer]
	@id NVARCHAR(50)
AS
SELECT category  FROM campaignwebsites WHERE id =  (SELECT website   FROM campaigncontainers WHERE id = @id)