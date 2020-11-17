CREATE TABLE [dbo].[SAPUltMovs] (
    [Centro]        NVARCHAR (4)  NULL,
    [UltFecha]      DATETIME      NULL,
    [Material]      NVARCHAR (18) NULL,
    [ClaseMov]      NVARCHAR (3)  NULL,
    [ClaseDoc]      NVARCHAR (2)  NULL,
    [TipoStock]     NVARCHAR (1)  NULL,
    [TotalCantidad] FLOAT (53)    NULL,
    [Ano]           INT           NULL,
    [Mes]           INT           NULL
);

