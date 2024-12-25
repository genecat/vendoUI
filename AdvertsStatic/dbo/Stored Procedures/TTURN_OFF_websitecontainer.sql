-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TTURN_OFF_websitecontainer]
@ctp  int,
@wid NVARCHAR(100)
AS
BEGIN
UPDATE websitelisting_containers SET onoroff = 0 WHERE sizetype = @ctp AND website = @wid
END