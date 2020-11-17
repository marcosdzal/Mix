CREATE TABLE [dbo].[SAPRepartosPosCompras] (
    [Centro]            VARCHAR (4)  NULL,
    [Pedido]            VARCHAR (10) NULL,
    [PedidoPos]         INT          NULL,
    [Reparto]           INT          NULL,
    [FechaEntrega]      DATETIME     NULL,
    [FechaEstadistica]  DATETIME     NULL,
    [TipoFechaEntrega]  VARCHAR (1)  NULL,
    [CantidadReparto]   REAL         NULL,
    [CantidadAnterior]  REAL         NULL,
    [CantidadEntrada]   REAL         NULL,
    [CantidadSalida]    REAL         NULL,
    [HoraEntrega]       DATETIME     NULL,
    [Solicitud]         VARCHAR (10) NULL,
    [SolictudPos]       INT          NULL,
    [IndCreacion]       VARCHAR (1)  NULL,
    [FechaPedido]       DATETIME     NULL,
    [RepartoFijado]     BIT          NULL,
    [CantProcTraslado]  REAL         NULL,
    [CantReducMRP]      REAL         NULL,
    [Lote]              VARCHAR (10) NULL,
    [LoteProveedor]     VARCHAR (15) NULL,
    [VersionFab]        VARCHAR (4)  NULL,
    [CantConfirmada]    REAL         NULL,
    [FechaConfirmacion] DATETIME     NULL,
    [FechaEntregaAnt]   DATETIME     NULL,
    [FechaUltAct]       DATETIME     NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_SAPRepartosPosCompras_CentroPedidoPos]
    ON [dbo].[SAPRepartosPosCompras]([Centro] ASC, [Pedido] ASC, [PedidoPos] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SAPRepartosPosCompras_Fecha]
    ON [dbo].[SAPRepartosPosCompras]([FechaEntrega] ASC);

