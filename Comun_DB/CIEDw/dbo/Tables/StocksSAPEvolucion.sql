CREATE TABLE [dbo].[StocksSAPEvolucion] (
    [Centro]             NVARCHAR (4)  NULL,
    [TipoMaterial]       NVARCHAR (4)  NULL,
    [Material]           NVARCHAR (18) NULL,
    [Almacen]            NVARCHAR (10) NULL,
    [TipoStock]          NVARCHAR (9)  NULL,
    [Lote]               NVARCHAR (10) NULL,
    [StockLibre]         REAL          NULL,
    [StockCalidad]       REAL          NULL,
    [StockBloqueado]     INT           NULL,
    [Cliente]            NVARCHAR (10) NULL,
    [Proveedor]          NVARCHAR (10) NULL,
    [Subcontratista]     NVARCHAR (10) NULL,
    [CosteStd]           FLOAT (53)    NULL,
    [FechaActualizacion] DATETIME      NULL,
    [TStock]             VARCHAR (1)   NULL
);

