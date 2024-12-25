CREATE PROCEDURE [dbo].[RefundPartial]
@cid NVARCHAR(100),
@value int
AS
BEGIN
INSERT INTO payment_refunds
(id, transactionid, datecreated, cashaccount, value)
values
(NEWID(), '', SYSUTCDATETIME(), @cid , @value) 
 END
 BEGIN
UPDATE accounts SET value += @value WHERE id = @cid
END