-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_draftwebsiteforcampaign]
@wid NVARCHAR(100)
AS
BEGIN
	SELECT cpc, budget,website FROM campaignwebsites WHERE id = @wid 
END