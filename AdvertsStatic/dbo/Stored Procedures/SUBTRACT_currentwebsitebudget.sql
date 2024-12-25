-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SUBTRACT_currentwebsitebudget
@wst NVARCHAR(100),
@val int
AS
BEGIN
UPDATE campaignwebsites SET budget -= @val WHERE id = @wst
END