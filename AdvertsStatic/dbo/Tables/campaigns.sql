CREATE TABLE [dbo].[campaigns] (
    [date_created]       DATETIME         NOT NULL,
    [website_ids]        NVARCHAR (MAX)   NULL,
    [dateend]            DATETIME         NULL,
    [title]              NVARCHAR (300)   NULL,
    [description]        NVARCHAR (3000)  NULL,
    [budget]             INT              NULL,
    [originalbudget]     INT              NULL,
    [dailybudget]        INT              NULL,
    [currentdailybudget] INT              NULL,
    [owner]              NVARCHAR (50)    NULL,
    [status]             INT              NOT NULL,
    [id]                 UNIQUEIDENTIFIER NOT NULL,
    [targeturl]          NVARCHAR (1000)  NULL,
    CONSTRAINT [PK_campaigns] PRIMARY KEY CLUSTERED ([id] ASC)
);

