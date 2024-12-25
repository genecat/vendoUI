-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_campaignwebsite]
@wid NVARCHAR(100)

AS
BEGIN
	SELECT category,status,website,originalbudget,budget,cpc FROM campaignwebsites WHERE id = @wid
END