-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_clicksbyuserid_45days]
@owner NVARCHAR(100)
AS
BEGIN
SELECT id,value,commission FROM ImageAdvertsClicks WHERE owner = @owner AND DATEADD(DAY,-45,SYSUTCDATETIME()) < date_clicked AND confirmed = 2
END