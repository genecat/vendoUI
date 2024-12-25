-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_listingsearchids_catonly]
@cat int 

AS
BEGIN

SELECT id FROM websitelisting WHERE status = 1 AND category = @cat

END