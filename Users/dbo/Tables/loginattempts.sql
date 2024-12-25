CREATE TABLE [dbo].[loginattempts] (
    [id]          INT              IDENTITY (1, 1) NOT NULL,
    [datecreated] DATETIME         NOT NULL,
    [type]        INT              NOT NULL,
    [userid]      UNIQUEIDENTIFIER NOT NULL,
    [ipadress]    NVARCHAR (50)    NOT NULL
);

