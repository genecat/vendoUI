-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UPDATE_verifywebsiteadvert
@cid NVARCHAR(100),
@lid NVARCHAR(100)
AS
BEGIN
UPDATE campaignwebsites SET  status = 1 WHERE status = 7 AND campaign = @cid AND website = @lid
END