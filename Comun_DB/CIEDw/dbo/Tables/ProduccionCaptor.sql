CREATE TABLE [dbo].[ProduccionCaptor] (
    [Centro]        NVARCHAR (10)   NULL,
    [Fecha]         DATETIME        NULL,
    [PuestoTrabajo] NVARCHAR (15)   NULL,
    [Turno]         NVARCHAR (15)   NULL,
    [Orden]         NVARCHAR (50)   NULL,
    [Cantidad]      NUMERIC (13, 3) NULL,
    [Mes]           INT             NULL,
    [Ano]           INT             NULL,
    [FechaInicio]   DATETIME        NULL,
    [FechaFin]      DATETIME        NULL,
    [CantidadTotal] NUMERIC (13, 3) NULL,
    [TiempoCiclo]   NUMERIC (13, 3) NULL,
    [Fase]          INT             NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_ProduccionCaptor_Fecha]
    ON [dbo].[ProduccionCaptor]([Fecha] ASC)
    INCLUDE([PuestoTrabajo], [Turno], [Orden], [Cantidad], [FechaInicio], [FechaFin], [CantidadTotal], [Fase]);

