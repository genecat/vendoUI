-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_websiteempty]
@uid NVARCHAR(100),
@cmp NVARCHAR(100),
@lid NVARCHAR(100)
AS
BEGIN
INSERT INTO campaignwebsites
(id,datecreated,owner,website,campaign,category)
OUTPUT Inserted.id
values
(NEWID(),SYSUTCDATETIME(),@uid,@lid,@cmp,(SELECT category FROM websitelisting WHERE id = @lid))
END