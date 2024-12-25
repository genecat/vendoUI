-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[GET_listingids_ctrstat]
@fc int,
@tc int
AS
BEGIN
IF @fc = 0 AND @tc > 0
SELECT id FROM websitelisting WHERE conversionrate < @tc AND status = 1

IF @fc > 0 AND @tc = 0
SELECT id FROM websitelisting WHERE conversionrate > @fc AND status = 1

IF @fc > 0 AND @tc > 0
SELECT id FROM websitelisting WHERE conversionrate > @fc AND conversionrate < @tc AND status = 1

END