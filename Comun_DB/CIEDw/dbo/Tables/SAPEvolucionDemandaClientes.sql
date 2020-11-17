CREATE TABLE [dbo].[SAPEvolucionDemandaClientes] (
    [Centro]             VARCHAR (4)     NULL,
    [DocVentas]          VARCHAR (10)    NULL,
    [DocVentasPos]       INT             NULL,
    [TipoDoc]            VARCHAR (1)     NULL,
    [Cliente]            VARCHAR (10)    NULL,
    [Solicitante]        VARCHAR (10)    NULL,
    [Material]           NVARCHAR (18)   NULL,
    [FechaReparto]       DATETIME        NULL,
    [CantidadPedida]     REAL            NULL,
    [CantidadPendiente]  REAL            NULL,
    [UnidadVenta]        VARCHAR (3)     NULL,
    [ClaseRepTurnos]     VARCHAR (1)     NULL,
    [OrdenReparto]       VARCHAR (20)    NULL,
    [CantAccSalida]      REAL            NULL,
    [CantAccEntregada]   REAL            NULL,
    [DiaProceso]         DATETIME        NULL,
    [PrecioVta]          NUMERIC (28, 5) NULL,
    [ImportePendiente]   NUMERIC (28, 2) NULL,
    [FechaActualizacion] DATETIME        NULL
);

