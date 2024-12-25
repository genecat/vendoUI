CREATE TABLE [dbo].[websitelisting_containers] (
    [id]       UNIQUEIDENTIFIER NOT NULL,
    [website]  NVARCHAR (100)   NOT NULL,
    [sizetype] INT              NOT NULL,
    [onoroff]  BIT              NOT NULL,
    CONSTRAINT [PK_websitelisting_containers] PRIMARY KEY CLUSTERED ([id] ASC)
);

