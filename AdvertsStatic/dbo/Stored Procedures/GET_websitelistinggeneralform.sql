-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_websitelistinggeneralform]
@wid NVARCHAR(100)
AS
BEGIN
SELECT description,category,statisticsurl,avarageusers,avaragevisitors,logoid,status,verificationtype  FROM websitelisting WHERE id = @wid
END