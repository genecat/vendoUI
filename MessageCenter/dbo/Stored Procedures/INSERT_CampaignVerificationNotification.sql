-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE INSERT_CampaignVerificationNotification
@receiver NVARCHAR(100),
@message NVARCHAR(3000),
@title NVARCHAR(200),
@metadata NVARCHAR(4000),
@messagetype int,
@is_html bit
AS
BEGIN
INSERT INTO messagetable
(Id,mesage,is_html,title,messagetype,datecreated,receiver,metadata,status)
values
(NEWID(),@message,@is_html,@title,@messagetype,SYSUTCDATETIME(),@receiver,@metadata,1)
END