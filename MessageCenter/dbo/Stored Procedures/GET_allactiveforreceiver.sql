﻿-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GET_allactiveforreceiver
@receiver NVARCHAR(100)
AS
BEGIN
SELECT Id,mesage,is_html,title,messagetype,emailtemplate,datecreated,dateseen,receiver,metadata  FROM messagetable WHERE receiver = @receiver AND status = 1
END