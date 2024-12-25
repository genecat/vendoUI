-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_impression]
@ip NVARCHAR(20),
@cont NVARCHAR(100)
AS
BEGIN
INSERT INTO ImpressionTable
(Id,ip,date,container,valid,Is_empty)
OUTPUT inserted.Id
values
(NEWID(),@ip,SYSUTCDATETIME(),@cont,1,1)
END