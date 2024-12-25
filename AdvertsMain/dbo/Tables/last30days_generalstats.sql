CREATE TABLE [dbo].[last30days_generalstats] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [owner]       NVARCHAR (100) NOT NULL,
    [impressions] INT            NOT NULL,
    [clicks]      INT            NOT NULL,
    [ctr]         FLOAT (53)     NOT NULL
);

