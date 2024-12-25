-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_credential]
@em NVARCHAR(50),
@hs VARBINARY(MAX)

AS
BEGIN
INSERT INTO usercredentials
(id,email,hash)
OUTPUT inserted.id
values

(NEWID(),@em,@hs)
END