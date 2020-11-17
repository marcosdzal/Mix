CREATE TABLE [dbo].[SAPConnection] (
    [Id]          INT           NOT NULL,
    [Name]        NCHAR (20)    NOT NULL,
    [SAPUser]     NVARCHAR (20) NOT NULL,
    [Passwd]      NVARCHAR (20) NOT NULL,
    [Client]      NVARCHAR (10) NOT NULL,
    [Lang]        NVARCHAR (6)  NOT NULL,
    [AsHost]      NVARCHAR (20) NOT NULL,
    [Sysnr]       NVARCHAR (10) NOT NULL,
    [MaxPoolSize] NVARCHAR (10) NOT NULL,
    [IdleTimeOut] NVARCHAR (10) NOT NULL
);

