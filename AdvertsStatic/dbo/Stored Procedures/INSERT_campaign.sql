-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_campaign]
@uid NVARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON;
INSERT INTO campaigns 
(id,date_created,status,owner)
OUTPUT Inserted.id
values
(NEWID(),SYSUTCDATETIME(),7,@uid)

   END