CREATE TABLE [dbo].[SAPRecepcionesCompras] (
    [Pedido]            VARCHAR (10)  NULL,
    [PedidoPos]         INT           NULL,
    [Mes]               INT           NULL,
    [Ano]               INT           NULL,
    [Albaran]           VARCHAR (10)  NULL,
    [AlbaranLinea]      INT           NULL,
    [TipoHistPedido]    VARCHAR (1)   NULL,
    [ClaseMov]          VARCHAR (3)   NULL,
    [Fecha]             DATETIME      NULL,
    [CantidadPedido]    REAL          NULL,
    [CantUNPedido]      REAL          NULL,
    [Importe]           REAL          NULL,
    [ImporteMonDoc]     REAL          NULL,
    [Moneda]            VARCHAR (5)   NULL,
    [ValorCompensa]     REAL          NULL,
    [DebeHaber]         VARCHAR (1)   NULL,
    [ClaseValoracion]   VARCHAR (10)  NULL,
    [EntregaFinal]      VARCHAR (1)   NULL,
    [AlbaranProveedor]  VARCHAR (16)  NULL,
    [AnoDocRef]         INT           NULL,
    [AlbaranRef]        VARCHAR (10)  NULL,
    [AlbaranLineaRef]   INT           NULL,
    [TipoMov]           INT           NULL,
    [FechaRegistro]     DATETIME      NULL,
    [ValorFactura]      REAL          NULL,
    [CumplimientoNorma] VARCHAR (2)   NULL,
    [Material]          NVARCHAR (18) NULL,
    [Centro]            VARCHAR (4)   NULL,
    [NCondDoc]          VARCHAR (10)  NULL,
    [IndIva]            VARCHAR (3)   NULL,
    [MonedaLocal]       VARCHAR (6)   NULL,
    [CantidadEntrega]   FLOAT (53)    NULL,
    [Lote]              VARCHAR (10)  NULL,
    [FechaAlbaran]      DATETIME      NULL,
    [Usuario]           VARCHAR (12)  NULL,
    [IndDevolucion]     VARCHAR (1)   NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_SAPRecepcionesCompras_CentroPedidoPos]
    ON [dbo].[SAPRecepcionesCompras]([Centro] ASC, [Pedido] ASC, [PedidoPos] ASC);

