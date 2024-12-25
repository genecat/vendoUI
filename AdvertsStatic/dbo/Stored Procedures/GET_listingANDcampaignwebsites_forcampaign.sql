-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_listingANDcampaignwebsites_forcampaign
@cid NVARCHAR(100)
AS
BEGIN
SELECT id, website FROM campaignwebsites WHERE campaign = @cid
END