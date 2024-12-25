CREATE PROCEDURE [dbo].[CHANGE_endexpiredcampaign]
	 
AS
BEGIN
UPDATE campaigns  SET status = 2 OUTPUT  (case when inserted.status <> deleted.status then deleted.owner else '' end),  (case when inserted.status <> deleted.status then deleted.budget else 0 end) WHERE status = 1  AND dateend < SYSUTCDATETIME()
END