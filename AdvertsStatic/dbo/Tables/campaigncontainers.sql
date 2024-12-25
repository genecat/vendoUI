CREATE TABLE [dbo].[campaigncontainers] (
    [id]            UNIQUEIDENTIFIER NOT NULL,
    [datecreated]   DATETIME         NOT NULL,
    [container]     NVARCHAR (100)   NOT NULL,
    [website]       NVARCHAR (100)   NOT NULL,
    [containertype] INT              NOT NULL,
    [mediafileid]   NVARCHAR (100)   NOT NULL,
    [status]        INT              CONSTRAINT [DF_campaigncontainers_status] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_campaigncontainers] PRIMARY KEY CLUSTERED ([id] ASC)
);

