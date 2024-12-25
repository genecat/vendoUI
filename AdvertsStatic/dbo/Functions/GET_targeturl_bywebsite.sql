-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GET_targeturl_bywebsite]
(@wb NVARCHAR(100))
RETURNS NVARCHAR(2000)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @res NVARCHAR(2000)
	DECLARE @cmpid NVARCHAR(2000)

	SELECT @cmpid =(SELECT campaign  FROM campaignwebsites WHERE id = @wb AND status = 1)

	-- Add the T-SQL statements to compute the return value here
	SELECT @res =  (SELECT targeturl FROM campaigns WHERE id =  @cmpid AND status = 1)

	-- Return the result of the function
	RETURN @res

END