CREATE TABLE [dbo].[VentasClientes] (
    [Ano]                      INT             NULL,
    [Mes]                      INT             NULL,
    [Centro]                   NVARCHAR (4)    NULL,
    [CentroBeneficio]          NVARCHAR (10)   NULL,
    [FechaRegistro]            DATETIME        NULL,
    [TipoDocComercial]         NVARCHAR (1)    NULL,
    [Entrega]                  NVARCHAR (10)   NULL,
    [ClaseEntrega]             NVARCHAR (4)    NULL,
    [DenominacionClaseEntrega] NVARCHAR (50)   NULL,
    [Destinatario]             NVARCHAR (10)   NULL,
    [NombreDest]               NVARCHAR (30)   NULL,
    [PaisDestinatario]         NVARCHAR (3)    NULL,
    [Solicitante]              NVARCHAR (10)   NULL,
    [FechaDocumento]           DATETIME        NULL,
    [FechaPlanTrans]           DATETIME        NULL,
    [Fecha]                    DATETIME        NULL,
    [FechaUltMod]              DATETIME        NULL,
    [PosEntrega]               BIGINT          NULL,
    [TipoPos]                  NVARCHAR (4)    NULL,
    [Almacen]                  NVARCHAR (4)    NULL,
    [TipoMaterial]             NVARCHAR (4)    NULL,
    [Material]                 NVARCHAR (18)   NULL,
    [Lote]                     NVARCHAR (10)   NULL,
    [MatCliente]               NVARCHAR (35)   NULL,
    [CartaPorte]               NVARCHAR (35)   NULL,
    [IdNotaEntrega]            NVARCHAR (35)   NULL,
    [CantidadEntrega]          NUMERIC (34)    NULL,
    [UNMedida]                 NVARCHAR (3)    NULL,
    [MonedaDoc]                NVARCHAR (5)    NULL,
    [PesoNetoPos]              NUMERIC (28)    NULL,
    [PesoBrutoPos]             NUMERIC (28)    NULL,
    [UNPeso]                   NVARCHAR (3)    NULL,
    [VolumenPos]               NUMERIC (28)    NULL,
    [UNVolPos]                 NVARCHAR (3)    NULL,
    [Incoterms1]               NVARCHAR (3)    NULL,
    [Incoterms2]               NVARCHAR (28)   NULL,
    [EsExpedicion]             BIT             NULL,
    [EsVenta]                  BIT             NULL,
    [HoraRegistro]             DATETIME        NULL,
    [FechaEntrega]             DATETIME        NULL,
    [PrecioVta]                DECIMAL (28, 5) NULL,
    [ImporteLinea]             DECIMAL (28, 2) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_VentasClientes_CentroFecha]
    ON [dbo].[VentasClientes]([Centro] ASC, [Fecha] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_VentasClientes_Fecha]
    ON [dbo].[VentasClientes]([Fecha] ASC)
    INCLUDE([Centro], [TipoDocComercial], [Entrega], [ClaseEntrega], [DenominacionClaseEntrega], [Destinatario], [NombreDest], [PaisDestinatario], [Solicitante], [PosEntrega], [TipoPos], [Almacen], [Material], [Lote], [MatCliente], [CantidadEntrega], [UNMedida], [MonedaDoc], [PesoNetoPos], [PesoBrutoPos], [UNPeso], [VolumenPos], [PrecioVta], [ImporteLinea]);

