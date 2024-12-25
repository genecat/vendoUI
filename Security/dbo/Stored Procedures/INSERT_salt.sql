-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE INSERT_salt
@uid UNIQUEIDENTIFIER,
@slt VARBINARY(MAX)
AS
BEGIN
INSERT INTO salt2
(id,salt)
values
(@uid,@slt)
END