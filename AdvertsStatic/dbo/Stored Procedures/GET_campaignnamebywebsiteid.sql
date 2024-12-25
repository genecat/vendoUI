CREATE PROCEDURE [dbo].[GET_campaignnamebywebsiteid]
	@wid NVARCHAR(100)
AS

SELECT title, targeturl FROM campaigns WHERE id = (select campaign from campaignwebsites WHERE id = @wid)