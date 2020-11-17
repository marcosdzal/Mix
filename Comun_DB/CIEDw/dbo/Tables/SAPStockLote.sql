CREATE TABLE [dbo].[SAPStockLote] (
    [Material]       NVARCHAR (18) NULL,
    [Centro]         NVARCHAR (4)  NULL,
    [Almacen]        NVARCHAR (4)  NULL,
    [Lote]           NVARCHAR (10) NULL,
    [Ano]            INT           NULL,
    [Mes]            INT           NULL,
    [StockLibre]     REAL          NULL,
    [StockCalidad]   REAL          NULL,
    [StockBloqueado] REAL          NULL
);

