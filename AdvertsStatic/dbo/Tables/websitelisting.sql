CREATE TABLE [dbo].[websitelisting] (
    [userid]           NVARCHAR (100)   NOT NULL,
    [description]      NVARCHAR (2000)  NOT NULL,
    [category]         INT              DEFAULT ((1)) NOT NULL,
    [status]           INT              CONSTRAINT [DF_websitelisting_status] DEFAULT ((1)) NOT NULL,
    [websiteurl]       NCHAR (1000)     NOT NULL,
    [statisticsurl]    NVARCHAR (1000)  NULL,
    [conversionrate]   DECIMAL (18, 2)  NOT NULL,
    [avarageusers]     INT              NOT NULL,
    [avaragevisitors]  INT              NOT NULL,
    [logoid]           NVARCHAR (100)   NOT NULL,
    [datecreated]      DATETIME         NOT NULL,
    [id]               UNIQUEIDENTIFIER NOT NULL,
    [verificationtype] INT              NOT NULL,
    CONSTRAINT [PK_websitelisting] PRIMARY KEY CLUSTERED ([id] ASC)
);

