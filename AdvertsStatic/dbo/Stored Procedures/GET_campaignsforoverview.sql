-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_campaignsforoverview
@uid NVARCHAR(100)
AS
BEGIN
SELECT id, dailybudget,currentdailybudget,budget,title, dateend, status  FROM campaigns WHERE owner = @uid
END