CREATE TABLE [dbo].[emailverificationtokens] (
    [id]     UNIQUEIDENTIFIER NOT NULL,
    [userid] NVARCHAR (100)   NOT NULL,
    [email]  NVARCHAR (200)   NOT NULL,
    [status] INT              CONSTRAINT [DF_emailverificationtokens_status] DEFAULT ((0)) NOT NULL,
    [code]   INT              NULL
);

