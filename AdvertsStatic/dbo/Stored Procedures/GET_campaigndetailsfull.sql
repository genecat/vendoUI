-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_campaigndetailsfull]
@cid NVARCHAR(100)
AS
BEGIN
	SELECT website_ids,dateend,description,budget,originalbudget,dailybudget,currentdailybudget,status,title,targeturl FROM campaigns WHERE id = @cid
END