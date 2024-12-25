-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_depositidbystripesessionid
@stripesid NVARCHAR(100)
AS
BEGIN
SELECT id  FROM deposit_transactions WHERE provider_paymentid = @stripesid
END