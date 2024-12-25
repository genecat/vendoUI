CREATE PROCEDURE VERIFY_loginattempt
@uid UNIQUEIDENTIFIER
AS
BEGIN
BEGIN
DECLARE @dif datetime
DECLARE @n int
SET @dif = DATEADD(MINUTE, -5, SYSUTCDATETIME())
SET @n = (SELECT COUNT(*) FROM loginattempts WHERE userid = @uid AND datecreated < @dif)
IF @n >= 5
SELECT 2
END
BEGIN
DECLARE @dif1 datetime
DECLARE @n1 int
SET @dif1 = DATEADD(MINUTE, -15, SYSUTCDATETIME())
SET @n1 = (SELECT COUNT(*) FROM loginattempts WHERE userid = @uid AND datecreated < @dif1)
IF @n1 >= 5
SELECT 3
END
BEGIN
DECLARE @dif2 datetime
DECLARE @n2 int
SET @dif2 = DATEADD(MINUTE, -60, SYSUTCDATETIME())
SET @n2 =  (SELECT COUNT(*) FROM loginattempts WHERE userid = @uid AND datecreated < @dif2)
IF @n2 >= 20
SELECT 4
END
BEGIN
IF @dif < 5 AND @dif1 <10 AND @dif2 < 20
SELECT 0
END
END