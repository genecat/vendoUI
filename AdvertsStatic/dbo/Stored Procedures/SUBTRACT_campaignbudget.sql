-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SUBTRACT_campaignbudget
@cmp NVARCHAR(100),
@val int
AS
BEGIN
UPDATE campaigns SET budget -= @val WHERE id = @cmp
END