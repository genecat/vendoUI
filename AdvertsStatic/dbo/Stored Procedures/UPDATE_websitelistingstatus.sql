-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UPDATE_websitelistingstatus
@wid NVARCHAR(100),
@newst int,
@uid  NVARCHAR(100)
AS
BEGIN
UPDATE websitelisting SET status = @newst WHERE id =@wid AND userid = @uid
END