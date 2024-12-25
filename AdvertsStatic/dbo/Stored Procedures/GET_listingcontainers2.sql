-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_listingcontainers2]
@wid NVARCHAR(100)
AS
BEGIN
SELECT id,sizetype  FROM websitelisting_containers WHERE website = (SELECT website FROM campaignwebsites WHERE id = @wid) AND onoroff = 1
END