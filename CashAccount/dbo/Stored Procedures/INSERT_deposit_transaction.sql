-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_deposit_transaction]
@cst int, --curent status 
@pr int, -- provider
@vl int, --value
@trid NVARCHAR(300),
@uid NVARCHAR(300)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO deposit_transactions
(id,transactiondate,currentstatus, provider,value, provider_paymentid,accountid)
OUTPUT inserted.id
values
(NEWID(),SYSUTCDATETIME(), @cst, @pr,@vl, @trid,(SELECT id FROM accounts WHERE userid = @uid))
END