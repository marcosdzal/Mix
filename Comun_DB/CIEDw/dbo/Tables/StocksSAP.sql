CREATE TABLE [dbo].[StocksSAP] (
    [Centro]          NVARCHAR (4)   NULL,
    [TipoMaterial]    NVARCHAR (4)   NULL,
    [Articulo]        NVARCHAR (18)  NULL,
    [Material]        NVARCHAR (18)  NULL,
    [Referencia]      NVARCHAR (18)  NULL,
    [DescrMaterial]   NVARCHAR (100) NULL,
    [CentroBeneficio] NVARCHAR (10)  NULL,
    [CosteStd]        FLOAT (53)     NULL,
    [StockLibre]      REAL           NULL,
    [StockCalidad]    REAL           NULL,
    [Lote]            NVARCHAR (10)  NULL,
    [Subcontratista]  NVARCHAR (10)  NULL,
    [UbicaEstatica]   NVARCHAR (10)  NULL,
    [TipoStock]       NVARCHAR (9)   NULL,
    [Valorado]        BIT            NULL,
    [Cliente]         NVARCHAR (10)  NULL,
    [Proveedor]       NVARCHAR (10)  NULL,
    [Almacen]         NVARCHAR (10)  NULL,
    [StockBloqueado]  INT            NULL,
    [TStock]          VARCHAR (1)    NULL
);

