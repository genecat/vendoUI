CREATE PROCEDURE [dbo].[SECURITY_CHECK_1]
	@cn NVARCHAR(100),
	@ip NVARCHAR(100)
AS
SELECT COUNT(*) FROM ImageAdvertsClicks WHERE container = @cn AND clicker_ip = @ip