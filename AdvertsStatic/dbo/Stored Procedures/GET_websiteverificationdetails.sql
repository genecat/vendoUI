-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_websiteverificationdetails
@wid NVARCHAR(100)
AS
BEGIN
SELECT id, status FROM websiteverificationrecords WHERE website = @wid
END