-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE INSERT_salt
@id UNIQUEIDENTIFIER,
@slt VARBINARY(MAX)
AS
BEGIN
INSERT INTO usersalt
(id,salt)
values
(@id,@slt)
END