-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_container] 
@wb NVARCHAR(50),
@ctp int,
@md NVARCHAR(50)

AS
BEGIN
INSERT INTO campaigncontainers
(id,datecreated, container, website, containertype, mediafileid)
OUTPUT Inserted.id
values
(NEWID(),SYSUTCDATETIME(), (SELECT id FROM websitelisting_containers WHERE
website = (SELECT website FROM campaignwebsites WHERE id = @wb) AND sizetype = @ctp), @wb, @ctp,@md)	
END