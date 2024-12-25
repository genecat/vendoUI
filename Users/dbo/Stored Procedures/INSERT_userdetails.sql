-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_userdetails]
@id UNIQUEIDENTIFIER,
@em NVARCHAR(100),
@cn NVARCHAR(50), -- country
@company NVARCHAR(100), 
@fullname NVARCHAR(250),
@address NVARCHAR(300),
@phone NVARCHAR(100),
@companycode NVARCHAR(50),
@cashaccount  NVARCHAR(100),

@consent_terms bit,
@consent_email bit,
@consent_sms bit,
@consent_phone bit
AS
BEGIN
INSERT INTO userdetails 
(id, email,country,company,fullname,adress,phone,companycode,cashaccount,status,consent_terms,consent_email,consent_sms,consent_phone)
values
(@id,@em,@cn,@company,@fullname,@address,@phone,@companycode,@cashaccount,1,@consent_terms,@consent_email,@consent_sms,@consent_phone)
END