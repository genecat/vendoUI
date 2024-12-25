-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_campaign]
@cmp NVARCHAR(50),
@wbids NVARCHAR(MAX),
@dtend datetime,
@ttl NVARCHAR(300),
@de NVARCHAR(3000),
@bd int, --budget
@orgbd int,--orginal budget
@dlbd int,--daily budget
@cdlbd int, --current daily budget
@own NVARCHAR(50),
@st int, --status
@targeturl nvarchar(1000)

AS
BEGIN
UPDATE campaigns SET website_ids = @wbids,
dateend = @dtend, title = @ttl, description = @de,
budget = @bd,originalbudget = @orgbd,
dailybudget = @dlbd, currentdailybudget = @cdlbd,
owner = @own, status = @st, date_created = SYSUTCDATETIME(), targeturl = @targeturl
WHERE id = @cmp
END