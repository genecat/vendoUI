CREATE TABLE [dbo].[ImageAdvertsClicks] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [value]        INT              NOT NULL,
    [clicker_ip]   NVARCHAR (100)   NOT NULL,
    [confirmed]    INT              NOT NULL,
    [date_clicked] DATETIME         NOT NULL,
    [container]    NVARCHAR (100)   NOT NULL,
    [owner]        NVARCHAR (100)   NULL,
    [commission]   FLOAT (53)       CONSTRAINT [DF_ImageAdvertsClicks_commission] DEFAULT ((0.4)) NOT NULL,
    CONSTRAINT [PK_ImageAdvertsClicks] PRIMARY KEY CLUSTERED ([Id] ASC)
);

