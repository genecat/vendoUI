-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_paymentrecord]
@vl int,
@tp int,
@acc NVARCHAR(50),
@cmp NVARCHAR(50),
@st int
AS
BEGIN
INSERT INTO payment_records
(id,value,datecreated,type,accountid,campaignid,token,status)
OUTPUT inserted.token, inserted.id
values
(NEWID(), @vl,SYSDATETIME(),@tp,(SELECT id FROM accounts WHERE userid = @acc),@cmp,HASHBYTES('SHA2_512',CONVERT(NVARCHAR(200),NEWID())),@st)
END