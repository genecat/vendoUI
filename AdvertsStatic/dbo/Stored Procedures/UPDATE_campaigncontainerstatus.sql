-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UPDATE_campaigncontainerstatus
@cnid NVARCHAR(100),
@nst int --new status
AS
BEGIN
UPDATE campaigncontainers SET status = @nst WHERE id = @cnid
END