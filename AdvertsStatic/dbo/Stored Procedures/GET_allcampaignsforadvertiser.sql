-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_allcampaignsforadvertiser]
@uid NVARCHAR(100)
AS
BEGIN
SELECT id,title FROM campaigns WHERE owner = @uid AND status != 0 AND status != 7
END