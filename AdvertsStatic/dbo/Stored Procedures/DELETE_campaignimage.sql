-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DELETE_campaignimage]
@wid NVARCHAR(100)
AS
BEGIN
DELETE FROM listinglogostable WHERE stream_id = (SELECT mediafileid FROM campaigncontainers WHERE website = @wid)
END