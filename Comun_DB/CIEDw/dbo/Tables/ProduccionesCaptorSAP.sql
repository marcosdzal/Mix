CREATE TABLE [dbo].[ProduccionesCaptorSAP] (
    [Centro]                  NVARCHAR (4)  NULL,
    [Fecha]                   DATETIME      NULL,
    [Puesto]                  NVARCHAR (8)  NULL,
    [Turno]                   NVARCHAR (4)  NULL,
    [Material]                NVARCHAR (18) NULL,
    [Lote]                    NVARCHAR (10) NULL,
    [ClaveControl]            NVARCHAR (4)  NULL,
    [NumeroOP]                NVARCHAR (5)  NULL,
    [Cantidad]                REAL          NULL,
    [CantidadNoOK]            REAL          NULL,
    [CantidadRetrabajo]       REAL          NULL,
    [CantidadRetrabajadaOK]   REAL          NULL,
    [CantidadRetrabajadaNoOK] REAL          NULL,
    [Tipo]                    NVARCHAR (1)  NULL,
    [cantidadTotalProduccion] REAL          NULL,
    [cantidadTotalReproceso]  REAL          NULL,
    [cantidadTotal]           REAL          NULL,
    [Fase]                    VARCHAR (5)   NULL,
    [Origen]                  NVARCHAR (6)  NULL
);

