-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[GET_containersfordraftwebsite]
@wid NVARCHAR(100)
AS
BEGIN
SELECT containertype,id,mediafileid,container FROM campaigncontainers WHERE website = @wid
END