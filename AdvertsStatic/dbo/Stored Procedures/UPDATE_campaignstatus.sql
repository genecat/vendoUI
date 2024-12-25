-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UPDATE_campaignstatus
@cid NVARCHAR(100),
@st int
AS
BEGIN
UPDATE campaigns SET status = @st WHERE id = @cid
END