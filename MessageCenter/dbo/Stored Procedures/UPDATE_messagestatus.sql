-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPDATE_messagestatus]
@mid NVARCHAR(100),
@nst int,
@uid NVARCHAR(100)

AS
BEGIN
UPDATE messagetable SET status = @nst WHERE Id = @mid AND receiver = @uid
END