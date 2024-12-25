-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_logoforlisting]
@logo VARBINARY(MAX),
@name NVARCHAR(50)
AS
BEGIN
INSERT INTO LogoImageFiles
(file_stream, name)
OUTPUT inserted.stream_id
values
(@logo, Convert(nvarchar(50),NEWID())+ '.' + @name)
END