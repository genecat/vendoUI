-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UPDATE_depositrecord_providerid
@id NVARCHAR(100),
@prid NVARCHAR(1000)
AS
BEGIN
UPDATE deposit_transactions SET provider_paymentid = @prid WHERE id = @id
END