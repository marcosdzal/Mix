CREATE TABLE [dbo].[SAPStockCliente] (
    [Material]        NVARCHAR (18) NULL,
    [Centro]          NVARCHAR (4)  NULL,
    [Lote]            NVARCHAR (10) NULL,
    [StockEspecial]   NVARCHAR (1)  NULL,
    [Cliente]         NVARCHAR (10) NULL,
    [Ano]             INT           NULL,
    [Mes]             INT           NULL,
    [StockDepLibre]   REAL          NULL,
    [StockDepCalidad] REAL          NULL,
    [FechaCreacion]   DATETIME      NULL
);

