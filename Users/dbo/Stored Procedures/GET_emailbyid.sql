CREATE PROCEDURE [dbo].[GET_emailbyid]
	@uid NVARCHAR(100)
AS
SELECT email FROM usercredentials WHERE id = @uid