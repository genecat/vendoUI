-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  UPDATE_websitestatus
@id NVARCHAR(100),
@st int
AS
BEGIN
	UPDATE campaignwebsites SET status = @st WHERE id = @id
END