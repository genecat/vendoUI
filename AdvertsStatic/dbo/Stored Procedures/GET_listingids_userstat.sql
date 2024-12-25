-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[GET_listingids_userstat]
@fu int,
@tu int
AS
BEGIN
IF @fu = 0 AND @tu > 0
SELECT id FROM websitelisting WHERE avarageusers < @tu AND status = 1

IF @fu > 0 AND @tu = 0
SELECT id FROM websitelisting WHERE avarageusers > @fu AND status = 1

IF @fu > 0 AND @tu > 0
SELECT id FROM websitelisting WHERE avarageusers > @fu AND avarageusers < @tu AND status = 1

END