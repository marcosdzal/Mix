CREATE TABLE [dbo].[AllMaterialsData] (
    [Centro]              NVARCHAR (4)    NULL,
    [Ano]                 INT             NULL,
    [Mes]                 INT             NULL,
    [TipoMaterial]        NVARCHAR (4)    NULL,
    [Articulo]            NVARCHAR (18)   NULL,
    [Material]            NVARCHAR (18)   NULL,
    [Referencia]          NVARCHAR (18)   NULL,
    [DescrMaterial]       NVARCHAR (100)  NULL,
    [CentroBeneficio]     NVARCHAR (10)   NULL,
    [PrecioVenta]         DECIMAL (28)    NULL,
    [UnidadMedida]        NVARCHAR (3)    NULL,
    [PesoBruto]           REAL            NULL,
    [PesoNeto]            REAL            NULL,
    [PesoConsumo]         REAL            NULL,
    [PrecioCoste]         REAL            NULL,
    [CosteStd]            REAL            NULL,
    [BaseCoste]           REAL            NULL,
    [CategoriaValoracion] NVARCHAR (8)    NULL,
    [Rechazo]             REAL            NULL,
    [Borrado]             BIT             NULL,
    [SujetoLote]          BIT             NULL,
    [PtoPedido]           REAL            NULL,
    [StockSeg]            REAL            NULL,
    [ClaseAprov]          NVARCHAR (2)    NULL,
    [RechazoPorcent]      REAL            NULL,
    [LotePlanNec]         REAL            NULL,
    [PlanifNec]           NVARCHAR (3)    NULL,
    [ClaseAprovEsp]       NVARCHAR (4)    NULL,
    [FechaCreacion]       DATETIME        NULL,
    [UbicaMaterial]       NVARCHAR (10)   NULL,
    [MonedaBase]          NVARCHAR (5)    NULL,
    [MonedaPrecioVta]     NVARCHAR (5)    NULL,
    [StockTotal]          DECIMAL (28, 3) NULL,
    [ValorStockTotal]     REAL            NULL,
    [MaterialStr]         NVARCHAR (18)   NULL,
    [GrupoArt]            NVARCHAR (9)    NULL,
    [Proyecto]            NVARCHAR (3)    NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_AllMaterialsData_CentroMaterial]
    ON [dbo].[AllMaterialsData]([Centro] ASC, [Material] ASC);

