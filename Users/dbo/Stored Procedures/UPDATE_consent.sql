CREATE PROCEDURE [dbo].[UPDATE_consent]
	@call bit,
	@email bit,
	@sms bit,
	@uid NVARCHAR(100)

AS
UPDATE userdetails SET consent_phone = @call, consent_email = @email, consent_sms = @sms WHERE id = @uid