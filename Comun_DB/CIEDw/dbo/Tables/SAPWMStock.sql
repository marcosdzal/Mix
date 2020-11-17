CREATE TABLE [dbo].[SAPWMStock] (
    [Centro]          NVARCHAR (4)  NULL,
    [Ubicacion]       NVARCHAR (10) NULL,
    [Material]        NVARCHAR (18) NULL,
    [Articulo]        NVARCHAR (18) NULL,
    [DescrMaterial]   NVARCHAR (40) NULL,
    [Lote]            NVARCHAR (10) NULL,
    [Cantidad]        REAL          NULL,
    [Unidad]          NVARCHAR (3)  NULL,
    [PesoBruto]       REAL          NULL,
    [PesoNeto]        REAL          NULL,
    [UNPeso]          NVARCHAR (3)  NULL,
    [TipoMat]         NVARCHAR (4)  NULL,
    [StatusMat]       NVARCHAR (2)  NULL,
    [FechaFinValidez] DATETIME      NULL,
    [FechaCreacion]   DATETIME      NULL,
    [CosteStd]        REAL          NULL,
    [BaseCoste]       REAL          NULL,
    [AlmacenWM]       NVARCHAR (3)  NULL,
    [StockEsp]        NVARCHAR (1)  NULL
);

