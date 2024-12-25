CREATE TABLE [dbo].[campaignwebsites] (
    [datecreated]    DATETIME         NOT NULL,
    [campaign]       NVARCHAR (100)   NOT NULL,
    [website]        NVARCHAR (100)   NOT NULL,
    [category]       INT              NOT NULL,
    [status]         INT              CONSTRAINT [DF_campaignwebsites_status] DEFAULT ((0)) NOT NULL,
    [originalbudget] INT              CONSTRAINT [DF_campaignwebsites_originalbudget] DEFAULT ((0)) NOT NULL,
    [budget]         INT              CONSTRAINT [DF_campaignwebsites_budget] DEFAULT ((0)) NOT NULL,
    [cpc]            INT              CONSTRAINT [DF_campaignwebsites_cpc] DEFAULT ((0)) NOT NULL,
    [id]             UNIQUEIDENTIFIER NOT NULL,
    [owner]          NVARCHAR (100)   NULL,
    CONSTRAINT [PK_campaignwebsites] PRIMARY KEY CLUSTERED ([id] ASC)
);

