CREATE TABLE [dbo].[websiteverificationrecords] (
    [id]      UNIQUEIDENTIFIER NOT NULL,
    [website] NVARCHAR (200)   NOT NULL,
    [status]  INT              NOT NULL,
    CONSTRAINT [PK_websiteverificationrecords] PRIMARY KEY CLUSTERED ([id] ASC)
);

