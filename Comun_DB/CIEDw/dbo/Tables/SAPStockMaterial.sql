CREATE TABLE [dbo].[SAPStockMaterial] (
    [Material]       NVARCHAR (18) NULL,
    [Centro]         NVARCHAR (4)  NULL,
    [Almacen]        NVARCHAR (4)  NULL,
    [Mes]            INT           NULL,
    [Ano]            INT           NULL,
    [StockLibre]     REAL          NULL,
    [StockCalidad]   REAL          NULL,
    [StockBloqueado] REAL          NULL
);

