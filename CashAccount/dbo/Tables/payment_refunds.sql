CREATE TABLE [dbo].[payment_refunds] (
    [id]            NVARCHAR (100) NOT NULL,
    [transactionid] NVARCHAR (100) NOT NULL,
    [value]         INT            NOT NULL,
    [datecreated]   DATETIME       NOT NULL,
    [cashaccount]   NVARCHAR (100) NOT NULL,
    [status]        INT            CONSTRAINT [DF_payment_refunds_status] DEFAULT ((1)) NULL
);

