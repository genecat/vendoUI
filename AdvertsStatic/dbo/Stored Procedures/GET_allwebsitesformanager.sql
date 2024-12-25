-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_allwebsitesformanager]
@uid NVARCHAR(100)
AS
BEGIN
SELECT id,websiteurl,status FROM websitelisting WHERE userid = @uid
END