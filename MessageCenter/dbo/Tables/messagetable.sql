CREATE TABLE [dbo].[messagetable] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [mesage]               NVARCHAR (3000)  NOT NULL,
    [is_html]              BIT              CONSTRAINT [DF_messagetable_is_html] DEFAULT ((0)) NOT NULL,
    [title]                NVARCHAR (200)   NOT NULL,
    [messagetype]          INT              NOT NULL,
    [emailtemplate]        NVARCHAR (100)   NULL,
    [datecreated]          DATETIME         NOT NULL,
    [dateseen]             DATETIME         NULL,
    [receiver]             NVARCHAR (100)   NULL,
    [is_multiplereceivers] BIT              CONSTRAINT [DF_messagetable_is_multiplereceivers] DEFAULT ((0)) NOT NULL,
    [metadata]             NVARCHAR (4000)  NULL,
    [status]               INT              NOT NULL,
    CONSTRAINT [PK_messagetable] PRIMARY KEY CLUSTERED ([Id] ASC)
);

