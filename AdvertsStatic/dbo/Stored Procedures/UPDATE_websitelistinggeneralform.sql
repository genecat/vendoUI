-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_websitelistinggeneralform]
@wid NVARCHAR(100),
@description  NVARCHAR(100),
@category int,
@statisticsurl  NVARCHAR(100),
@avarageusers int,
@avaragevisitors  int,
@logoid NVARCHAR(100)
AS
BEGIN
UPDATE websitelisting SET
description = @description, category = @category, statisticsurl = @statisticsurl, avarageusers = @avarageusers,
avaragevisitors = @avaragevisitors, logoid = @logoid WHERE id = @wid
END