-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_websitebudget]
@bd int,
@orgbd int,
@id NVARCHAR(100)
AS
BEGIN
IF ((SELECT budget FROM campaigns WHERE id = (SELECT campaign FROM campaignwebsites WHERE id = @id)) 
>= ((SELECT budget FROM campaignwebsites WHERE id = @id)+@bd))

	UPDATE campaignwebsites SET budget += @bd , originalbudget += @orgbd OUTPUT inserted.budget WHERE id = @id
	 
ELSE
SELECT 0
END