-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_listinglogo]
@fls_id NVARCHAR(50)
AS
BEGIN
SELECT file_stream, file_type FROM LogoImageFiles WHERE stream_id = @fls_id
END