﻿CREATE TABLE [dbo].[ExpedicionesLineas] (
    [Ano]               INT           NULL,
    [Mes]               INT           NULL,
    [Entrega]           NVARCHAR (10) NULL,
    [PosEntrega]        BIGINT        NULL,
    [TipoPos]           NVARCHAR (4)  NULL,
    [Material]          NVARCHAR (18) NULL,
    [GrupoArt]          NVARCHAR (9)  NULL,
    [Centro]            NVARCHAR (4)  NULL,
    [Almacen]           NVARCHAR (4)  NULL,
    [Lote]              NVARCHAR (10) NULL,
    [MatCliente]        NVARCHAR (35) NULL,
    [CantidadEntrega]   DECIMAL (28)  NULL,
    [UNMedida]          NVARCHAR (3)  NULL,
    [PesoNetoPos]       DECIMAL (28)  NULL,
    [PesoBrutoPos]      DECIMAL (28)  NULL,
    [UNPeso]            NVARCHAR (3)  NULL,
    [VolumenPos]        DECIMAL (28)  NULL,
    [UNVolPos]          NVARCHAR (3)  NULL,
    [ClaseMovEntrega]   NVARCHAR (3)  NULL,
    [IndControlPicking] NVARCHAR (1)  NULL,
    [AlmacenUbicas]     NVARCHAR (3)  NULL,
    [TipoAlmUbicas]     NVARCHAR (3)  NULL,
    [TipoMaterial]      NVARCHAR (4)  NULL,
    [SujetoLote]        BIT           NULL,
    [CanalDistr]        NVARCHAR (2)  NULL,
    [Sector]            NVARCHAR (2)  NULL,
    [StockEsp]          NVARCHAR (1)  NULL,
    [Sociedad]          NVARCHAR (4)  NULL,
    [CentroBeneficio]   NVARCHAR (10) NULL,
    [DescrMaterial]     NVARCHAR (40) NULL
);

