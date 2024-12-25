CREATE PROCEDURE [dbo].[UPDATE_dailybudget]

AS
UPDATE campaigns SET currentdailybudget = dailybudget WHERE status = 1