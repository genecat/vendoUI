-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE DELETE_forfailedregistration
@uid NVARCHAR(100)
AS
BEGIN
BEGIN
DELETE usercredentials WHERE id = @uid
END
BEGIN
DELETE userdetails WHERE id = @uid
END
BEGIN
DELETE usersalt WHERE id = @uid
END
END