-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	datecreated<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[REFUND_fullpayment]
@cid NVARCHAR(100),
@tid NVARCHAR(100)
AS
 BEGIN
IF EXISTS (SELECT * FROM deposit_transactions WHERE id = @tid AND accountid = @cid) 
BEGIN
DECLARE @transactionvalue int
DECLARE @existingrefunds int
SET @transactionvalue = (SELECT value FROM deposit_transactions WHERE id = @tid AND accountid = @cid)
SET @existingrefunds = (SELECT SUM(value) FROM payment_refunds WHERE transactionid = @tid AND cashaccount = @cid)
BEGIN
IF  @existingrefunds < @transactionvalue
 BEGIN
 BEGIN
INSERT INTO payment_refunds
(id, transactionid, datecreated, cashaccount, value)
values
(NEWID(), @tid, SYSUTCDATETIME(), @cid, @transactionvalue -  @existingrefunds) 
 END
 BEGIN
UPDATE accounts SET value += @transactionvalue -  @existingrefunds  WHERE id = @cid
END
 END
--value else
ELSE
BEGIN
SELECT 3 -- already refunded
END
END
END
---main else 
ELSE
BEGIN
SELECT 2 -- transfer does not exist
 END

 END