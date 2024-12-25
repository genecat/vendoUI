-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_passwordchangetoken]
@tk NVARCHAR(500),
@uid NVARCHAR(100)
AS
BEGIN
INSERT INTO passwordchangetokens
(token,userid,datecreated)
 
values
(@tk,@uid,SYSUTCDATETIME())
END