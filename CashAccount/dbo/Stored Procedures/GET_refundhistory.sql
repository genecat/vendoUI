-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_refundhistory
@uid NVARCHAR(100),
@datefrom DATETIME,
@dateto DATETIME
AS
BEGIN
SELECT id,status, value, datecreated FROM payment_refunds WHERE cashaccount = (SELECT id FROM accounts WHERE userid = @uid) AND @datefrom <= datecreated AND @dateto >= datecreated
END