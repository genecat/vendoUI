CREATE TABLE [dbo].[accounts] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [value]  INT              NOT NULL,
    [userid] NVARCHAR (50)    NOT NULL,
    CONSTRAINT [PK_accounts] PRIMARY KEY CLUSTERED ([id] ASC)
);

