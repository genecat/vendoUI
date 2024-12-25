-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_allpayments]
@uid NVARCHAR(100),
@datefrom DATETIME,
@dateto DATETIME
AS
BEGIN
SELECT id, status,value,datecreated,type,campaignid FROM payment_records WHERE
accountid = (SELECT id FROM accounts WHERE userid = @uid) AND @datefrom <= datecreated AND @dateto >= datecreated
END