-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_targeturl
@id NVARCHAR(100)
AS
BEGIN
SELECT targeturl FROM campaigns WHERE id = @id
END