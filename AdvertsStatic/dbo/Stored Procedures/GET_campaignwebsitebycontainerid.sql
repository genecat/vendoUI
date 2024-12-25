-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_campaignwebsitebycontainerid
@id NVARCHAR(100)
AS
BEGIN
SELECT website FROM campaigncontainers WHERE id = @id
END