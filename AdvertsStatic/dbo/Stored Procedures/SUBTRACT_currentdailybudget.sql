-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SUBTRACT_currentdailybudget
@cmp NVARCHAR(100),
@val int
AS
BEGIN
UPDATE campaigns SET currentdailybudget -= @val WHERE id = @cmp

END