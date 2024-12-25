-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCPC]
@id NVARCHAR(100)
AS
BEGIN
DECLARE @website NVARCHAR(100)
SET @website = (SELECT website FROM  campaigncontainers WHERE id = @id) 
DECLARE @category int
SET @category = (SELECT category FROM  websitelisting WHERE id = (SELECT website FROM campaignwebsites WHERE id = @website)) 

SELECT currentvalue FROM ClickRateTable WHERE category = @category
END