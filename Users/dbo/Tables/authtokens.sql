CREATE TABLE [dbo].[authtokens] (
    [token]          NVARCHAR (512)   NOT NULL,
    [datecreated]    DATETIME         NOT NULL,
    [currentaccount] INT              NOT NULL,
    [userid]         UNIQUEIDENTIFIER NOT NULL,
    [id]             INT              IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_authtokens] PRIMARY KEY CLUSTERED ([id] ASC)
);

