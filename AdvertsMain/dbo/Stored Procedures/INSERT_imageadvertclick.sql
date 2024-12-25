-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_imageadvertclick] 
@ip NVARCHAR(20),
@cont NVARCHAR(300),
@val int
AS
BEGIN
INSERT INTO ImageAdvertsClicks 
(Id,value,clicker_ip,confirmed,date_clicked,container)
values
(NEWID(),@val,@ip,0,SYSUTCDATETIME(),@cont)
END