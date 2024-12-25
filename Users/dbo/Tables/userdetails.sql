CREATE TABLE [dbo].[userdetails] (
    [id]                UNIQUEIDENTIFIER NOT NULL,
    [country]           NVARCHAR (50)    NOT NULL,
    [company]           NVARCHAR (150)   NULL,
    [fullname]          NVARCHAR (250)   NULL,
    [adress]            NVARCHAR (300)   NULL,
    [phone]             NVARCHAR (50)    NULL,
    [companycode]       NVARCHAR (50)    NULL,
    [email]             NVARCHAR (200)   NOT NULL,
    [cashaccount]       NVARCHAR (100)   NULL,
    [status]            INT              CONSTRAINT [DF_userdetails_status] DEFAULT ((1)) NULL,
    [affiliate_referer] NVARCHAR (100)   NULL,
    [consent_terms]     BIT              NULL,
    [consent_email]     BIT              NULL,
    [consent_sms]       BIT              NULL,
    [consent_phone]     BIT              NULL
);

