CREATE TABLE [dbo].[payment_records] (
    [id]          UNIQUEIDENTIFIER NOT NULL,
    [value]       INT              NOT NULL,
    [datecreated] DATETIME         NOT NULL,
    [type]        INT              NOT NULL,
    [accountid]   NVARCHAR (100)   NOT NULL,
    [campaignid]  NVARCHAR (100)   NOT NULL,
    [status]      INT              CONSTRAINT [DF_payment_records_status] DEFAULT ((1)) NOT NULL,
    [orderid]     NVARCHAR (100)   NULL,
    [token]       VARBINARY (550)  NULL,
    CONSTRAINT [PK_payment_records] PRIMARY KEY CLUSTERED ([id] ASC)
);

