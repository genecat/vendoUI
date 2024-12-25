-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_advert]
@cn NVARCHAR(100)
AS
BEGIN
SELECT  mediafileid, dbo.GET_targeturl_bywebsite(website) FROM campaigncontainers WHERE id = @cn
END