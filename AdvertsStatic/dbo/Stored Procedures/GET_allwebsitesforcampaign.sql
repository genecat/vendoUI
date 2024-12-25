-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_allwebsitesforcampaign]
@cmp NVARCHAR(100)
AS
BEGIN
SELECT id,website FROM campaignwebsites WHERE campaign = @cmp
END