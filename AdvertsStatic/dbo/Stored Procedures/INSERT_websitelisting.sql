-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[INSERT_websitelisting]
@uid NVARCHAR(100),
@desc NVARCHAR(2000),
@st int,
@ct int,
@wurl NVARCHAR(1000),
@avgu int,
@avgv int,
@ctr DECIMAL(18,2),
@sturl NVARCHAR(1000),
@lgid NVARCHAR(100),
@vrfc int
AS
BEGIN
IF NOT EXISTS (SELECT * FROM websitelisting WHERE websiteurl = @wurl)
INSERT INTO websitelisting
 (id,userid,description,category,status,websiteurl,statisticsurl,conversionrate,avarageusers,avaragevisitors,logoid,datecreated,verificationtype)
 OUTPUT inserted.id
 values
 (NEWID(),@uid,@desc,@ct,@st,@wurl,@sturl,@ctr,@avgu,@avgv,@lgid,SYSUTCDATETIME(),@vrfc)
END