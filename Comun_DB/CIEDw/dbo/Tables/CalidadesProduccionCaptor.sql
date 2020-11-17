CREATE TABLE [dbo].[CalidadesProduccionCaptor] (
    [Centro]        NVARCHAR (10)   NULL,
    [PuestoTrabajo] NVARCHAR (15)   NULL,
    [Orden]         NVARCHAR (50)   NULL,
    [Fase]          INT             NULL,
    [Fecha]         DATETIME        NULL,
    [Turno]         NVARCHAR (15)   NULL,
    [Calidad]       NVARCHAR (15)   NULL,
    [Cantidad]      NUMERIC (13, 3) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_CalidadesProduccionCaptor_CentroFecha]
    ON [dbo].[CalidadesProduccionCaptor]([Centro] ASC, [Fecha] ASC)
    INCLUDE([PuestoTrabajo], [Orden], [Fase], [Turno], [Calidad], [Cantidad]);


GO
CREATE NONCLUSTERED INDEX [IX_CalidadesProduccionCaptor_Fecha]
    ON [dbo].[CalidadesProduccionCaptor]([Fecha] ASC);

