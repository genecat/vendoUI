CREATE TABLE [dbo].[passwordchangetokens] (
    [userid]      NVARCHAR (200) NOT NULL,
    [token]       NVARCHAR (550) NOT NULL,
    [datecreated] DATETIME       NULL
);

