-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CHECK_ifdailybudgetenough]
@cpc int,
@cid NVARCHAR(100)
AS
BEGIN
IF ((SELECT currentdailybudget FROM campaigns WHERE id = @cid) >= @cpc)
SELECT 1
ELSE
SELECT 0
END