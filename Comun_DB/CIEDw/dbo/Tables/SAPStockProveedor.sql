CREATE TABLE [dbo].[SAPStockProveedor] (
    [Material]             NVARCHAR (18) NULL,
    [Centro]               NVARCHAR (4)  NULL,
    [Almacen]              NVARCHAR (4)  NULL,
    [Lote]                 NVARCHAR (10) NULL,
    [StockEspecial]        NVARCHAR (1)  NULL,
    [Proveedor]            NVARCHAR (10) NULL,
    [Ano]                  INT           NULL,
    [Mes]                  INT           NULL,
    [StockConsigLibre]     REAL          NULL,
    [StockConsigBloqueado] REAL          NULL,
    [StockConsigCalidad]   REAL          NULL,
    [FechaCreacion]        DATETIME      NULL
);

