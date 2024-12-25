-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_addtoaccount]
@acc NVARCHAR(100),
@amnt int

AS
BEGIN
	 
UPDATE accounts SET  value +=   @amnt
WHERE id = @acc
END