-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GET_verificationrecord]
@wid NVARCHAR(100)
AS
BEGIN
SELECT id,status FROM websiteverificationrecords WHERE website = @wid
END