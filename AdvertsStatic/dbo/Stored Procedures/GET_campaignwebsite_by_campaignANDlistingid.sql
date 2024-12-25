-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_campaignwebsite_by_campaignANDlistingid
@cid NVARCHAR(100),
@lid NVARCHAR(100)
AS
BEGIN
SELECT id  FROM campaignwebsites WHERE campaign = @cid AND website = @lid
END