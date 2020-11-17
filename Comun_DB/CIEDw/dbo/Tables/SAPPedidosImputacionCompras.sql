CREATE TABLE [dbo].[SAPPedidosImputacionCompras] (
    [Centro]            VARCHAR (4)  NULL,
    [Pedido]            VARCHAR (10) NULL,
    [PedidoPos]         INT          NULL,
    [NActualInputacion] INT          NULL,
    [IndBorrado]        BIT          NULL,
    [FechaCreacionReg]  DATETIME     NULL,
    [Cantidad]          REAL         NULL,
    [PorcentDistrib]    REAL         NULL,
    [ValorNetoMonDoc]   REAL         NULL,
    [CuentaMayor]       VARCHAR (10) NULL,
    [CentroCoste]       VARCHAR (10) NULL,
    [Reparto]           INT          NULL,
    [Activo]            VARCHAR (12) NULL,
    [ActivoSub]         VARCHAR (4)  NULL,
    [OrdenEstadistica]  VARCHAR (12) NULL,
    [Sociedad]          VARCHAR (4)  NULL,
    [ConInterno]        INT          NULL,
    [FechaUltAct]       DATETIME     NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_SAPPedidosImputacionCompras_CentroPedidosPos]
    ON [dbo].[SAPPedidosImputacionCompras]([Centro] ASC, [Pedido] ASC, [PedidoPos] ASC);

