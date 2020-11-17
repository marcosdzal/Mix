CREATE TABLE [dbo].[StockValorado] (
    [Centro]          NVARCHAR (4)  NULL,
    [TipoMaterial]    NVARCHAR (4)  NULL,
    [Articulo]        NVARCHAR (18) NULL,
    [Material]        INT           NULL,
    [CentroBeneficio] NVARCHAR (10) NULL,
    [CosteStd]        FLOAT (53)    NULL,
    [Stock]           FLOAT (53)    NULL,
    [Valor]           FLOAT (53)    NULL
);

