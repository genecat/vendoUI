CREATE TABLE [dbo].[deposit_transactions] (
    [id]                 UNIQUEIDENTIFIER NOT NULL,
    [accountid]          NVARCHAR (100)   NULL,
    [currentstatus]      INT              NULL,
    [transactiondate]    DATETIME         NULL,
    [provider]           INT              NULL,
    [value]              INT              NULL,
    [provider_paymentid] NVARCHAR (100)   NULL,
    CONSTRAINT [PK_deposit_transactions] PRIMARY KEY CLUSTERED ([id] ASC)
);

