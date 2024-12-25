-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE INSERT_initiallistingcontainers
@wid UNIQUEIDENTIFIER
AS
BEGIN
INSERT INTO websitelisting_containers
(id)
values
(@wid)
END