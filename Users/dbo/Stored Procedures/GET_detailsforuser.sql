CREATE PROCEDURE [dbo].[GET_detailsforuser]
	@userid NVARCHAR(100)
AS
SELECT company, adress, companycode, country,fullname,phone, consent_email, consent_phone, consent_sms,email FROM userdetails WHERE id = @userid