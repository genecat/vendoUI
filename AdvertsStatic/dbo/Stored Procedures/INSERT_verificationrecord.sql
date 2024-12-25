-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_verificationrecord]
@wid NVARCHAR(100)
AS
BEGIN
	INSERT INTO websiteverificationrecords
	(id,website,status)
	OUTPUT inserted.id
	values
	(NEWID(),@wid,0)
END