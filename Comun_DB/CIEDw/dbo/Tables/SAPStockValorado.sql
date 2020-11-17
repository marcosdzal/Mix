CREATE TABLE [dbo].[SAPStockValorado] (
    [Material]          NVARCHAR (18) NULL,
    [Centro]            NVARCHAR (4)  NULL,
    [ClaseValor]        NVARCHAR (10) NULL,
    [StockValorado]     REAL          NULL,
    [IndControlPrecios] NVARCHAR (1)  NULL,
    [PrecioVariable]    REAL          NULL,
    [CosteStd]          REAL          NULL,
    [CantBase]          REAL          NULL,
    [CategoriaValor]    NVARCHAR (4)  NULL,
    [Ano]               INT           NULL,
    [Mes]               INT           NULL,
    [TipoValor]         NVARCHAR (1)  NULL,
    [PrecioPrevisto]    REAL          NULL
);

