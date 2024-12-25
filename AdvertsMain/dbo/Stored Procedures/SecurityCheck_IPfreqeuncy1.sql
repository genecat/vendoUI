CREATE PROCEDURE [dbo].[SecurityCheck_IPfreqeuncy1]
	@ip NVARCHAR(100)
AS
IF ((SELECT COUNT(*) FROM ImageAdvertsClicks WHERE date_clicked > DATEADD(second,-120,SYSUTCDATETIME()) AND clicker_ip = @ip) <= 2)
SELECT 1
ELSE 
SELECT 2