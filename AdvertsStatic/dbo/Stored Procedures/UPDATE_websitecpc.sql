-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UPDATE_websitecpc
@id NVARCHAR(100),
@cpc int
AS
BEGIN
 UPDATE campaignwebsites SET cpc = @cpc WHERE id = @id
END