-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TURN_ON_container]
@ctp int,
@wid NVARCHAR(100)
AS
BEGIN
IF EXISTS (SELECT id FROM websitelisting_containers WHERE sizetype = @ctp AND website = @wid)
UPDATE websitelisting_containers  SET onoroff = 1 OUTPUT inserted.id WHERE sizetype = @ctp AND website = @wid
ELSE
INSERT INTO websitelisting_containers
(id,website,sizetype,onoroff)
OUTPUT inserted.id
values
(NEWID(),@wid,@ctp,1)
END