CREATE TABLE [dbo].[SAPOrdenesEntregaCliente] (
    [Centro]            VARCHAR (4)   NULL,
    [DocVentas]         VARCHAR (10)  NULL,
    [DocVentasPos]      INT           NULL,
    [TipoDoc]           VARCHAR (1)   NULL,
    [Cliente]           VARCHAR (10)  NULL,
    [NombreCliente]     VARCHAR (40)  NULL,
    [Solicitante]       VARCHAR (10)  NULL,
    [NombreSolicitante] VARCHAR (40)  NULL,
    [Material]          NVARCHAR (18) NULL,
    [FechaCarga]        DATETIME      NULL,
    [FechaReparto]      DATETIME      NULL,
    [CantidadPedida]    REAL          NULL,
    [CantidadPendiente] REAL          NULL,
    [UnidadVenta]       VARCHAR (3)   NULL,
    [ClaseRepTurnos]    VARCHAR (1)   NULL,
    [OrdenReparto]      VARCHAR (20)  NULL,
    [DiasRuta]          INT           NULL,
    [CantAccSalida]     REAL          NULL,
    [CantAccEntregada]  REAL          NULL,
    [DiaProceso]        DATETIME      NULL
);

