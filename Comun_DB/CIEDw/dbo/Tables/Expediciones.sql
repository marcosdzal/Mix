﻿CREATE TABLE [dbo].[Expediciones] (
    [Ano]              INT           NULL,
    [Mes]              INT           NULL,
    [Centro]           NVARCHAR (4)  NULL,
    [Entrega]          NVARCHAR (10) NULL,
    [UsuarioCrea]      NVARCHAR (12) NULL,
    [HoraRegistro]     DATETIME      NULL,
    [FechaRegistro]    DATETIME      NULL,
    [PtoExpedicion]    NVARCHAR (4)  NULL,
    [OrgVentas]        NVARCHAR (4)  NULL,
    [ClaseEntrega]     NVARCHAR (4)  NULL,
    [FechaPrevista]    DATETIME      NULL,
    [FechaCarga]       DATETIME      NULL,
    [FechaPlanTrans]   DATETIME      NULL,
    [FechaEntrega]     DATETIME      NULL,
    [FechaPicking]     DATETIME      NULL,
    [PuestoDescarga]   NVARCHAR (25) NULL,
    [Incoterms1]       NVARCHAR (3)  NULL,
    [Incoterms2]       NVARCHAR (28) NULL,
    [TipoDocComercial] NVARCHAR (1)  NULL,
    [Destinatario]     NVARCHAR (10) NULL,
    [Solicitante]      NVARCHAR (10) NULL,
    [PesoTotal]        DECIMAL (28)  NULL,
    [PesoNeto]         DECIMAL (28)  NULL,
    [UnidadPeso]       NVARCHAR (3)  NULL,
    [VolumenTotal]     DECIMAL (28)  NULL,
    [UnidadVolumen]    NVARCHAR (3)  NULL,
    [BultosTotales]    SMALLINT      NULL,
    [LugarDisposicion] NVARCHAR (20) NULL,
    [HoraEntrega]      DATETIME      NULL,
    [GrupoPeso]        NVARCHAR (4)  NULL,
    [PuestoCarga]      NVARCHAR (2)  NULL,
    [GrupoTransporte]  NVARCHAR (4)  NULL,
    [MonedaDoc]        NVARCHAR (5)  NULL,
    [UsuarioModifica]  NVARCHAR (12) NULL,
    [FechaUltMod]      DATETIME      NULL,
    [AlmacenUbicas]    NVARCHAR (3)  NULL,
    [CartaPorte]       NVARCHAR (35) NULL,
    [CuentaProveedor]  NVARCHAR (10) NULL,
    [MedioTransposte]  NVARCHAR (4)  NULL,
    [ValeSalida]       NVARCHAR (10) NULL,
    [FechaDocumento]   DATETIME      NULL,
    [Fecha]            DATETIME      NULL,
    [IdNotaEntrega]    NVARCHAR (35) NULL,
    [NombreDest]       NVARCHAR (30) NULL,
    [DirDestinatario]  NVARCHAR (35) NULL,
    [CPDestinatario]   NVARCHAR (10) NULL,
    [PoblacionDest]    NVARCHAR (35) NULL,
    [PaisDestinatario] NVARCHAR (3)  NULL
);

