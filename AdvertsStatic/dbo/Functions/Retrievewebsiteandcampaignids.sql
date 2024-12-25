-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[Retrievewebsiteandcampaignids] 
(
	@id NVARCHAR(100)
)
RETURNS NVARCHAR(100)
AS
BEGIN
DECLARE @output NVARCHAR(100)
DECLARE @wid NVARCHAR(100)
DECLARE @cid NVARCHAR(100)

SET @wid = (SELECT website FROM campaigncontainers WHERE id = @id AND status = 1)
SET @cid = (SELECT campaign FROM campaignwebsites WHERE id = @wid AND status = 1)
SET @output = @wid + ':' + @cid

	RETURN @output

END