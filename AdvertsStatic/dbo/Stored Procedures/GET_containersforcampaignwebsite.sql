-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_containersforcampaignwebsite
@wid NVARCHAR(100)
AS
BEGIN
SELECT id,datecreated,container,containertype,mediafileid,status FROM campaigncontainers WHERE website = @wid
END