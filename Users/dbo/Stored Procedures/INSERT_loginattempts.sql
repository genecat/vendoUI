-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE INSERT_loginattempts
@id UNIQUEIDENTIFIER,
@ip NVARCHAR(50),
@tp int
AS
BEGIN
INSERT INTO loginattempts
(datecreated,type,userid,ipadress)
values
(SYSUTCDATETIME(),@tp,@id,@ip)
END