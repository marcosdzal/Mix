CREATE TABLE [dbo].[SAPStockSubcontrata] (
    [Material]        NVARCHAR (18) NULL,
    [Centro]          NVARCHAR (4)  NULL,
    [Lote]            NVARCHAR (10) NULL,
    [StockEspecial]   NVARCHAR (1)  NULL,
    [Proveedor]       NVARCHAR (10) NULL,
    [Ano]             INT           NULL,
    [Mes]             INT           NULL,
    [StockSubLibre]   REAL          NULL,
    [StockSubCalidad] REAL          NULL,
    [FechaCreacion]   DATETIME      NULL
);

