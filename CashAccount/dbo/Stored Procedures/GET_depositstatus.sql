-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_depositstatus
@depid NVARCHAR(100)
AS
BEGIN
SELECT currentstatus  FROM deposit_transactions WHERE id = @depid
END