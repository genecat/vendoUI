-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_websiteandcampaignids]
@id NVARCHAR(100)
AS
BEGIN
SELECT (SELECT website FROM campaigncontainers WHERE id = @id AND status = 1), (SELECT campaign FROM campaignwebsites WHERE id = (SELECT website FROM campaigncontainers WHERE id = @id AND status = 1) AND status = 1)
END