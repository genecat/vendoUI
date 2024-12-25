-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_listingcontainers
@wid NVARCHAR(100)
AS
BEGIN
SELECT id,sizetype,onoroff FROM websitelisting_containers WHERE website = @wid
END