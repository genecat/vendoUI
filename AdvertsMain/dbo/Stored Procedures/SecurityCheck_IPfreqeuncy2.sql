CREATE PROCEDURE [dbo].[SecurityCheck_IPfreqeuncy2]
	@ip NVARCHAR(100),
	@cmpcontainer NVARCHAR(100)
AS
IF ((SELECT COUNT(*) FROM ImageAdvertsClicks WHERE container = @cmpcontainer AND clicker_ip = @ip) <= 2)
SELECT 1
ELSE 
SELECT 2