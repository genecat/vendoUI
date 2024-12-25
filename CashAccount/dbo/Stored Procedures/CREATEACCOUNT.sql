-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CREATEACCOUNT]
@uid NVARCHAR(100) 
AS
BEGIN
	INSERT INTO accounts
	(id,value,userid)
	OUTPUT inserted.id
	values
	(NEWID(),0,@uid)
END