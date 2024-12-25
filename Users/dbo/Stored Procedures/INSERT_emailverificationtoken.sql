-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_emailverificationtoken]
@uid NVARCHAR(100),
@em NVARCHAR(200),
@code NVARCHAR(10)
AS
BEGIN
INSERT INTO emailverificationtokens
(id,userid,email,code)
OUTPUT inserted.id
values
(NEWID(),@uid,@em,@code)
END