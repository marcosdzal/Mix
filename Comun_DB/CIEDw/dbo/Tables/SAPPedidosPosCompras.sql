﻿CREATE TABLE [dbo].[SAPPedidosPosCompras] (
    [Pedido]             VARCHAR (10) NULL,
    [PedidoPos]          INT          NULL,
    [Borrado]            BIT          NULL,
    [StatusOferta]       VARCHAR (50) NULL,
    [FechaUltMod]        DATETIME     NULL,
    [TextoBreve]         VARCHAR (40) NULL,
    [Material]           VARCHAR (18) NULL,
    [Material2]          VARCHAR (18) NULL,
    [Sociedad]           VARCHAR (4)  NULL,
    [Centro]             VARCHAR (4)  NULL,
    [Almacen]            VARCHAR (4)  NULL,
    [GrupoArt]           VARCHAR (9)  NULL,
    [RegInfo]            VARCHAR (10) NULL,
    [MatProveedor]       VARCHAR (35) NULL,
    [CantPrevisa]        REAL         NULL,
    [CantPedido]         REAL         NULL,
    [UNPedido]           VARCHAR (3)  NULL,
    [UNPrecio]           VARCHAR (3)  NULL,
    [PrecioMonDoc]       REAL         NULL,
    [CantBase]           REAL         NULL,
    [ValorNetoMonDoc]    REAL         NULL,
    [ValorBrutoMonDoc]   REAL         NULL,
    [IndIva]             VARCHAR (2)  NULL,
    [TipoStock]          VARCHAR (1)  NULL,
    [ActRegInfo]         BIT          NULL,
    [IndExcesoSum]       BIT          NULL,
    [TolIncompleto]      REAL         NULL,
    [EntregaFinal]       BIT          NULL,
    [FacturaFinal]       BIT          NULL,
    [TipoPosPed]         VARCHAR (1)  NULL,
    [TipoImputacion]     VARCHAR (1)  NULL,
    [ContCons]           VARCHAR (1)  NULL,
    [FacturaParcial]     BIT          NULL,
    [EntradaMercancia]   BIT          NULL,
    [NoValorada]         BIT          NULL,
    [IndRecepFactura]    BIT          NULL,
    [UNMedidaBase]       VARCHAR (3)  NULL,
    [NormaEnvio]         VARCHAR (2)  NULL,
    [ValorContratoMarco] REAL         NULL,
    [FechaPrecio]        DATETIME     NULL,
    [TipoDocCompra]      VARCHAR (1)  NULL,
    [Cliente]            VARCHAR (10) NULL,
    [PlazoDias]          REAL         NULL,
    [PesoNeto]           REAL         NULL,
    [EstadoRevision]     VARCHAR (2)  NULL,
    [CentroBeneficio]    VARCHAR (10) NULL,
    [PesoBruto]          REAL         NULL,
    [Volumen]            REAL         NULL,
    [Incoterms1]         VARCHAR (3)  NULL,
    [Incoterms2]         VARCHAR (28) NULL,
    [Solicitud]          VARCHAR (10) NULL,
    [SolicitudPos]       INT          NULL,
    [TipoMaterial]       VARCHAR (4)  NULL,
    [Rappel1]            REAL         NULL,
    [Solicitante]        VARCHAR (12) NULL,
    [FechaHorizonte]     DATETIME     NULL,
    [DocReferencia]      VARCHAR (16) NULL,
    [FechaUltAct]        DATETIME     NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_SAPPedidosPosCompras_CentroPedidoPos]
    ON [dbo].[SAPPedidosPosCompras]([Centro] ASC, [Pedido] ASC, [PedidoPos] ASC);

