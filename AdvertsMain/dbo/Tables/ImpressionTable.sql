CREATE TABLE [dbo].[ImpressionTable] (
    [ip]        NVARCHAR (50)    NOT NULL,
    [date]      DATETIME         NOT NULL,
    [container] NVARCHAR (50)    NOT NULL,
    [valid]     INT              NOT NULL,
    [Is_empty]  BIT              NOT NULL,
    [Id]        UNIQUEIDENTIFIER NULL,
    [AdServed]  NVARCHAR (100)   NULL
);

