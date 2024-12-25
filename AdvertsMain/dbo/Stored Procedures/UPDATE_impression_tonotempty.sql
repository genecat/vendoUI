-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[UPDATE_impression_tonotempty]
@id NVARCHAR(100),
@ad NVARCHAR(100)
AS
BEGIN
UPDATE ImpressionTable SET Is_empty = 0, AdServed = @ad WHERE Id = @id
END