CREATE TABLE [dbo].[OFFasesCaptor] (
    [Centro]              NVARCHAR (10)   NULL,
    [OrdenCaptor]         NVARCHAR (50)   NULL,
    [Fase]                INT             NULL,
    [Version]             NVARCHAR (10)   NULL,
    [NombreOrdenCaptor]   NVARCHAR (40)   NULL,
    [DescrOrdeCaptor]     NVARCHAR (2000) NULL,
    [Material]            NVARCHAR (20)   NULL,
    [FechaInicioReal]     DATETIME        NULL,
    [EstadoOrden]         NVARCHAR (10)   NULL,
    [FechaCreacionOrden]  DATETIME        NULL,
    [Usuario]             NVARCHAR (20)   NULL,
    [NombreFase]          NVARCHAR (40)   NULL,
    [DescrFase]           NVARCHAR (2000) NULL,
    [PuestoTrabajo]       NVARCHAR (15)   NULL,
    [GrupoPuestos]        NVARCHAR (15)   NULL,
    [TiempoStd]           INT             NULL,
    [Cadencia]            NUMERIC (13, 3) NULL,
    [FechaInicioRealFase] DATETIME        NULL,
    [EstadoFase]          NVARCHAR (10)   NULL,
    [EstadoRegistroOrden] NVARCHAR (10)   NULL,
    [EstadoRegistroFase]  NVARCHAR (10)   NULL,
    [CantidadTotal]       NUMERIC (13, 3) NULL,
    [CantidadOK]          NUMERIC (13, 3) NULL,
    [EsFicticia]          BIT             NULL,
    [FactorPLC]           NUMERIC (13, 3) NULL,
    [FactorOperarios]     NUMERIC (13, 3) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_OFFasesCaptor_CentroOrdenFase]
    ON [dbo].[OFFasesCaptor]([Centro] ASC, [OrdenCaptor] ASC, [Fase] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_OFFasesCaptor_CentroOden]
    ON [dbo].[OFFasesCaptor]([Centro] ASC, [OrdenCaptor] ASC);

