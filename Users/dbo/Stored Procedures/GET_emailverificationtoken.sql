CREATE PROCEDURE [dbo].[GET_emailverificationtoken]
	@email NVARCHAR(50)
AS
SELECT code FROM emailverificationtokens WHERE email = @email