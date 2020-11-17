CREATE TABLE [dbo].[SAPPedidosCompras] (
    [Centro]            VARCHAR (4)  NULL,
    [Pedido]            VARCHAR (10) NULL,
    [Sociedad]          VARCHAR (4)  NULL,
    [TipoDoc]           VARCHAR (1)  NULL,
    [ClaseDoc]          VARCHAR (4)  NULL,
    [Borrado]           BIT          NULL,
    [Estado]            VARCHAR (1)  NULL,
    [FechaCreacion]     DATETIME     NULL,
    [Usuario]           VARCHAR (12) NULL,
    [Proveedor]         VARCHAR (10) NULL,
    [Idioma]            VARCHAR (1)  NULL,
    [CondPago]          VARCHAR (4)  NULL,
    [PorcentPP1]        REAL         NULL,
    [PorcentPP2]        REAL         NULL,
    [OrgCompras]        VARCHAR (4)  NULL,
    [GrupoCompras]      VARCHAR (4)  NULL,
    [Moneda]            VARCHAR (5)  NULL,
    [CambioMoneda]      REAL         NULL,
    [IndTipoCambio]     VARCHAR (1)  NULL,
    [FechaDoc]          DATETIME     NULL,
    [Vendedor]          VARCHAR (30) NULL,
    [Telefono]          VARCHAR (16) NULL,
    [Cliente]           VARCHAR (10) NULL,
    [IndEntrada]        BIT          NULL,
    [IncoTerms1]        VARCHAR (3)  NULL,
    [IncoTerms2]        VARCHAR (28) NULL,
    [NCondDoc]          VARCHAR (10) NULL,
    [DeterPrecios]      VARCHAR (6)  NULL,
    [EmisorFactura]     VARCHAR (10) NULL,
    [DatosComExt]       VARCHAR (12) NULL,
    [NuestraReferencia] VARCHAR (12) NULL,
    [EstadoLiberacion]  VARCHAR (8)  NULL,
    [PaisDeclarFiscal]  VARCHAR (3)  NULL,
    [NIFPropio]         VARCHAR (20) NULL,
    [MotivoRechazo]     TINYINT      NULL,
    [EstadoDoc]         VARCHAR (2)  NULL,
    [ValorLiberacion]   REAL         NULL,
    [FechaCabEntrega]   DATETIME     NULL,
    [FechaUltAct]       DATETIME     NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_SAPPedidosCompras_CentroPedido]
    ON [dbo].[SAPPedidosCompras]([Centro] ASC, [Pedido] ASC);

