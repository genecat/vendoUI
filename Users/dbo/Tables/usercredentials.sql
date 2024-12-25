CREATE TABLE [dbo].[usercredentials] (
    [id]    UNIQUEIDENTIFIER NOT NULL,
    [email] NVARCHAR (100)   NOT NULL,
    [hash]  VARBINARY (MAX)  NOT NULL,
    CONSTRAINT [PK_usercredentials] PRIMARY KEY CLUSTERED ([id] ASC)
);

