-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UPDATE_websitelistingverificationtype
@wid NVARCHAR(100),
@newtp int
AS
BEGIN
	UPDATE websitelisting SET verificationtype = @newtp WHERE id = @wid
END