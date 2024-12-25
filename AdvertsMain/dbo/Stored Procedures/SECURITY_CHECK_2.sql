CREATE PROCEDURE [dbo].[SECURITY_CHECK_2]
	@cn NVARCHAR(100),
	@ip NVARCHAR(100)

AS
SELECT COUNT(*) FROM ImpressionTable WHERE container = @cn AND ip = @ip