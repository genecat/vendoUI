-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_domainforwebsite
@wid NVARCHAR(100)
AS
BEGIN
SELECT websiteurl FROM websitelisting WHERE id = @wid
END