-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE   CLAIM_paymenttokenwithvalue
@token NVARCHAR(550),
@user NVARCHAR(100),
@id NVARCHAR(100),
@val int
AS
BEGIN
IF EXISTS (SELECT * FROM payment_records WHERE accountid = (SELECT id FROM accounts WHERE userid = @user) AND id = @id AND 
token = @token AND status = 4)
BEGIN 
IF ((SELECT value FROM payment_records WHERE accountid = (SELECT id FROM accounts WHERE userid = @user) AND id = @id AND 
token = @token AND status = 4) = @val)
BEGIN
UPDATE payment_records  SET  status = 1 OUTPUT inserted.status  WHERE accountid = (SELECT id FROM accounts WHERE userid = @user) AND id = @id AND 
token = @token AND status = 4
END
ELSE
BEGIN
SELECT 2
END
 
END
ELSE
BEGIN 
SELECT 0
END
END