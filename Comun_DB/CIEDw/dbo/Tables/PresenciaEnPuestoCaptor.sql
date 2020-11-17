CREATE TABLE [dbo].[PresenciaEnPuestoCaptor] (
    [Centro]        NVARCHAR (10) NULL,
    [Ano]           INT           NULL,
    [Mes]           INT           NULL,
    [Fecha]         DATETIME      NULL,
    [PuestoTrabajo] NVARCHAR (15) NULL,
    [Turno]         NVARCHAR (15) NULL,
    [worker]        NVARCHAR (10) NULL,
    [workerName]    NVARCHAR (40) NULL,
    [FechaInicio]   DATETIME      NULL,
    [FechaFin]      DATETIME      NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_PresenciaEnPuestoCaptor_CentroFecha]
    ON [dbo].[PresenciaEnPuestoCaptor]([Centro] ASC, [Fecha] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_PresenciaEnPuestoCaptor_Fecha]
    ON [dbo].[PresenciaEnPuestoCaptor]([Fecha] ASC);

