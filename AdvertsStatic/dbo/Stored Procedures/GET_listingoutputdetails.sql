-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[GET_listingoutputdetails]
@lid NVARCHAR(100) 
AS
BEGIN
	SELECT avaragevisitors, avarageusers, conversionrate, websiteurl, logoid FROM websitelisting WHERE id = @lid
END