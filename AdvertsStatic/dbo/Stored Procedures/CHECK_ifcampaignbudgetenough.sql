-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CHECK_ifcampaignbudgetenough]
@cpc int,
@cid NVARCHAR(100)
AS
BEGIN
IF ((SELECT budget FROM campaigns WHERE id = @cid AND status = 1) >= @cpc)
SELECT 1
ELSE
SELECT 0
END