-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_alldeposits]
@uid NVARCHAR(100),
@datefrom DATETIME,
@dateto DATETIME
AS
BEGIN
 SELECT id, currentstatus,value,transactiondate,provider,provider_paymentid FROM deposit_transactions WHERE
 accountid = (SELECT id FROM accounts WHERE userid = @uid) AND @datefrom <= transactiondate AND @dateto >= transactiondate
END