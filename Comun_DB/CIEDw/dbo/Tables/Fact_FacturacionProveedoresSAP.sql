﻿CREATE TABLE [dbo].[Fact_FacturacionProveedoresSAP] (
    [Centro]              NVARCHAR (4)  NULL,
    [Sociedad]            NVARCHAR (4)  NULL,
    [Proveedor]           NVARCHAR (10) NULL,
    [ClaseDoc]            NVARCHAR (2)  NULL,
    [NDocContable]        NVARCHAR (10) NULL,
    [PosDocContable]      INT           NULL,
    [Ejercicio]           INT           NULL,
    [FechaDoc]            DATETIME      NULL,
    [Fecha]               DATETIME      NULL,
    [FechaRegistro]       DATETIME      NULL,
    [Usuario]             NVARCHAR (12) NULL,
    [Transaccion]         NVARCHAR (20) NULL,
    [ClaseOperacion]      NVARCHAR (2)  NULL,
    [NDocumento]          NVARCHAR (16) NULL,
    [MonedaDoc]           NVARCHAR (4)  NULL,
    [TipoCambio]          REAL          NULL,
    [ImporteBruto]        REAL          NULL,
    [ImporteImpuesto]     REAL          NULL,
    [IndicadorImpuesto]   NVARCHAR (2)  NULL,
    [CondicionPago]       NVARCHAR (4)  NULL,
    [Pedido]              NVARCHAR (10) NULL,
    [PedidoPos]           INT           NULL,
    [NImputacion]         INT           NULL,
    [Material]            NVARCHAR (18) NULL,
    [ImporteMonedaDoc]    REAL          NULL,
    [ImporteMonedaLocal]  REAL          NULL,
    [DH]                  NVARCHAR (1)  NULL,
    [IndicadorIVA]        NVARCHAR (2)  NULL,
    [Cantidad]            REAL          NULL,
    [UNPedido]            NVARCHAR (3)  NULL,
    [CantUNPrecioPedido]  REAL          NULL,
    [UNPrecioPedido]      NVARCHAR (3)  NULL,
    [TipoPosPedido]       NVARCHAR (1)  NULL,
    [TImputacion]         NVARCHAR (1)  NULL,
    [CategoriaValoracion] NVARCHAR (4)  NULL,
    [Albaran]             NVARCHAR (10) NULL,
    [AlbaranLinea]        INT           NULL,
    [TextoPosicion]       NVARCHAR (50) NULL,
    [Moneda]              NVARCHAR (3)  NULL
);

