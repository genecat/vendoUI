-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_campaigncontainerbywebsitecontainer
@cn NVARCHAR(100)
AS
BEGIN
SELECT id FROM campaigncontainers WHERE container = @cn AND status = 1
END