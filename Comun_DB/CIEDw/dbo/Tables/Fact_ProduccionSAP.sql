CREATE TABLE [dbo].[Fact_ProduccionSAP] (
    [Centro]                  NVARCHAR (4)    NULL,
    [Fecha]                   DATETIME        NULL,
    [Puesto]                  NVARCHAR (8)    NULL,
    [Turno]                   NVARCHAR (4)    NULL,
    [Material]                NVARCHAR (18)   NULL,
    [Lote]                    NVARCHAR (10)   NULL,
    [Fase]                    VARCHAR (5)     NULL,
    [ClaveControl]            NVARCHAR (4)    NULL,
    [Articulo]                NVARCHAR (18)   NULL,
    [cantidad]                NUMERIC (13, 3) NULL,
    [cantidadNoOK]            NUMERIC (13, 3) NULL,
    [cantidadTotalProduccion] NUMERIC (13, 3) NULL,
    [cantidadRetrabajo]       NUMERIC (13, 3) NULL,
    [cantidadRetrabajadaOK]   NUMERIC (13, 3) NULL,
    [cantidadRetrabajadaNoOK] NUMERIC (13, 3) NULL,
    [cantidadTotalReproceso]  NUMERIC (13, 3) NULL,
    [FechaInicio]             DATETIME        NULL,
    [FechaFin]                DATETIME        NULL,
    [CantidadTotal]           NUMERIC (13, 3) NULL,
    [Tipo]                    NVARCHAR (1)    NULL,
    [VersionFabricacion]      NVARCHAR (4)    NULL,
    [Origen]                  NVARCHAR (10)   NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Fact_ProduccionSAP_CentroFecha]
    ON [dbo].[Fact_ProduccionSAP]([Centro] ASC, [Fecha] ASC);

