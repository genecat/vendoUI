-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE INSERT_newtoken
@uid UNIQUEIDENTIFIER,
@tk NVARCHAR(512),
@tp int
AS
BEGIN
INSERT INTO authtokens
(userid,token,datecreated,currentaccount)
values
(@uid,@tk,SYSUTCDATETIME(),@tp)
END