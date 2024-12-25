-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_campaignbycontainerid
@id NVARCHAR(100)
AS
BEGIN
DECLARE @wid NVARCHAR(100)
SET @wid = (SELECT website FROM campaigncontainers WHERE id = @id)

SELECT campaign FROM campaignwebsites WHERE  id = @wid
END