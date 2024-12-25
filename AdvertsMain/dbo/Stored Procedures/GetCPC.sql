-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCPC]
 
@category int
AS
BEGIN
 
SELECT currentvalue FROM ClickRateTable WHERE id = @category
END