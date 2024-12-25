CREATE PROCEDURE [dbo].[GET_listingsforuser_forpublisher]
	@uid NVARCHAR(100)
AS
SELECT id, websiteurl  FROM websitelisting WHERE userid = @uid