CREATE TABLE [dbo].[SAPMovs] (
    [Centro]            NVARCHAR (4)  NULL,
    [Ano]               INT           NULL,
    [Mes]               INT           NULL,
    [Fecha]             DATETIME      NULL,
    [Material]          NVARCHAR (18) NULL,
    [Almacen]           NVARCHAR (4)  NULL,
    [ClaseMov]          NVARCHAR (3)  NULL,
    [DocMaterial]       NVARCHAR (10) NULL,
    [DocMaterialPos]    INT           NULL,
    [Ejercicio]         INT           NULL,
    [ClaseDoc]          NVARCHAR (2)  NULL,
    [FechaDoc]          DATETIME      NULL,
    [FechaEntrada]      DATETIME      NULL,
    [Usuario]           NVARCHAR (12) NULL,
    [TextoCabecera]     NVARCHAR (50) NULL,
    [IdPosDoc]          INT           NULL,
    [Lote]              NVARCHAR (10) NULL,
    [TipoStock]         NVARCHAR (1)  NULL,
    [Proveedor]         NVARCHAR (10) NULL,
    [Cliente]           NVARCHAR (10) NULL,
    [NPedidoCliente]    NVARCHAR (10) NULL,
    [NPedidoClientePos] INT           NULL,
    [RepartoPedido]     INT           NULL,
    [DH]                NVARCHAR (1)  NULL,
    [Moneda]            NVARCHAR (5)  NULL,
    [Importe]           FLOAT (53)    NULL,
    [Cantidad]          FLOAT (53)    NULL,
    [UNMedida]          NVARCHAR (3)  NULL,
    [CantEntrada]       FLOAT (53)    NULL,
    [UNEntrada]         NVARCHAR (3)  NULL,
    [CantUNPedido]      FLOAT (53)    NULL,
    [UNPedido]          NVARCHAR (3)  NULL,
    [NPedidoCompras]    NVARCHAR (10) NULL,
    [NPedidoComprasPos] INT           NULL,
    [DocReferencia]     NVARCHAR (32) NULL,
    [DocReferenciaPos]  INT           NULL,
    [AnoDocReferencia]  INT           NULL,
    [IndEntregaFinal]   BIT           NULL,
    [TextoPosicion]     NVARCHAR (50) NULL,
    [DestMercancias]    NVARCHAR (12) NULL,
    [PuestoDescarga]    NVARCHAR (25) NULL,
    [Division]          NVARCHAR (4)  NULL,
    [Sociedad]          NVARCHAR (4)  NULL,
    [CentroCoste]       NVARCHAR (10) NULL,
    [OrdenEstadistica]  NVARCHAR (12) NULL,
    [CuentaMayor]       NVARCHAR (10) NULL,
    [UP]                NVARCHAR (10) NULL,
    [ImporteFactura]    FLOAT (53)    NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_SAPMovs_Centro]
    ON [dbo].[SAPMovs]([Centro] ASC)
    INCLUDE([Fecha], [Material], [Almacen], [ClaseMov], [DocMaterial], [DocMaterialPos], [ClaseDoc], [TextoCabecera], [Lote], [TipoStock], [Proveedor], [Cliente], [DH], [Importe], [Cantidad], [UNMedida], [CentroCoste], [OrdenEstadistica], [CuentaMayor]);


GO
CREATE NONCLUSTERED INDEX [IX_SAPMovs_CentroFecha]
    ON [dbo].[SAPMovs]([Centro] ASC, [Fecha] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SAPMovs_Fecha]
    ON [dbo].[SAPMovs]([Fecha] ASC);

