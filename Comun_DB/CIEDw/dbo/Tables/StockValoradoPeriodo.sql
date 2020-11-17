CREATE TABLE [dbo].[StockValoradoPeriodo] (
    [Centro]          NVARCHAR (4)  NULL,
    [Almacen]         NVARCHAR (4)  NULL,
    [Material]        NVARCHAR (18) NULL,
    [Cliente]         NVARCHAR (10) NULL,
    [Proveedor]       NVARCHAR (10) NULL,
    [Ano]             INT           NULL,
    [Mes]             INT           NULL,
    [EjercicioActual] INT           NULL,
    [PeriodoActual]   INT           NULL,
    [CosteStd]        REAL          NULL,
    [CantBase]        REAL          NULL,
    [Stock]           FLOAT (53)    NULL,
    [TipoStock]       NVARCHAR (1)  NULL,
    [Valor]           FLOAT (53)    NULL
);

