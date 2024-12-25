-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UPDATE_budgetforallcampaignsites
@cmp NVARCHAR(100),
@bd int
AS
BEGIN
 UPDATE campaignwebsites SET budget = @bd,  originalbudget = @bd WHERE campaign = @cmp 
END