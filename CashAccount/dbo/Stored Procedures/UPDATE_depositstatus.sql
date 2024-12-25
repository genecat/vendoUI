-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_depositstatus]
@newstatus int,
@paymentid NVARCHAR(100)
AS
BEGIN
UPDATE deposit_transactions  SET currentstatus = @newstatus OUTPUT deleted.value WHERE id = @paymentid
END