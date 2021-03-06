﻿CREATE TABLE [dbo].[SAPDemandaClientes] (
    [Centro]            VARCHAR (4)     NULL,
    [DocVentas]         VARCHAR (10)    NULL,
    [DocVentasPos]      INT             NULL,
    [TipoDoc]           VARCHAR (1)     NULL,
    [Cliente]           VARCHAR (10)    NULL,
    [NombreCliente]     VARCHAR (40)    NULL,
    [Solicitante]       VARCHAR (10)    NULL,
    [NombreSolicitante] VARCHAR (40)    NULL,
    [Material]          NVARCHAR (18)   NULL,
    [FechaReparto]      DATETIME        NULL,
    [CantidadPedida]    REAL            NULL,
    [CantidadPendiente] REAL            NULL,
    [UnidadVenta]       VARCHAR (3)     NULL,
    [ClaseRepTurnos]    VARCHAR (1)     NULL,
    [OrdenReparto]      VARCHAR (20)    NULL,
    [Ruta]              VARCHAR (8)     NULL,
    [DescrRuta]         NVARCHAR (50)   NULL,
    [DiasLab]           BIT             NULL,
    [FechaCarga]        DATETIME        NULL,
    [DiasRuta]          INT             NULL,
    [CantAccSalida]     REAL            NULL,
    [CantAccEntregada]  REAL            NULL,
    [DiaProceso]        DATETIME        NULL,
    [PrecioVta]         DECIMAL (28, 5) NULL,
    [ImportePendiente]  DECIMAL (28, 2) NULL,
    [OrigenPrecio]      NVARCHAR (10)   DEFAULT ('') NOT NULL
);

