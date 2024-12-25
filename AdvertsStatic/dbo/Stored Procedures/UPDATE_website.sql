-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UPDATE_website
@cmp NVARCHAR(50),
@wb NVARCHAR(50),
@ct int,
@st int, --status
@cn NVARCHAR(MAX), --containers seperated by ";"
@wbad NVARCHAR(500), --website adress (landing page)
@orgbd int,
@bd int,
@cpc int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE campaignwebsites
	SET campaign = @cmp, website = @wb, category = @ct,
	status = @st, 
	originalbudget = @orgbd, budget = @bd, cpc = @cpc
	
	END