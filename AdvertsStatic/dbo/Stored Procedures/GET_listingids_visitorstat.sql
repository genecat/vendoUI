-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[GET_listingids_visitorstat]
@fv int,
@tv int
AS
BEGIN
IF @fv = 0 AND @tv > 0
SELECT id FROM websitelisting WHERE avaragevisitors < @tv AND status = 1

IF @fv > 0 AND @tv = 0
SELECT id FROM websitelisting WHERE avaragevisitors > @fv AND status = 1

IF @fv > 0 AND @tv > 0
SELECT id FROM websitelisting WHERE avaragevisitors > @fv AND avaragevisitors < @tv AND status = 1

END