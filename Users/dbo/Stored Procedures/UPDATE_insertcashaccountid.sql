-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UPDATE_insertcashaccountid
@uid NVARCHAR(100),
@cid NVARCHAR(100)
AS
BEGIN
 UPDATE userdetails SET cashaccount = @cid WHERE id = @uid
END