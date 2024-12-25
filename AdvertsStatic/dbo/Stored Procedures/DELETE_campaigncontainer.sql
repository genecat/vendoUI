-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  DELETE_campaigncontainer
@cn NVARCHAR(100),
@wid NVARCHAR(100),
@tp int,
@uid NVARCHAR(100)
AS
BEGIN
DECLARE @cmp NVARCHAR(100)
SET @cmp = (SELECT campaign FROM campaignwebsites WHERE id = @wid)
IF EXISTS (SELECT id FROM campaigns WHERE owner = @uid AND id = @cmp)
DELETE FROM campaigncontainers 
OUTPUT deleted.mediafileid
WHERE id = @cn AND website = @wid  AND status = 0

END