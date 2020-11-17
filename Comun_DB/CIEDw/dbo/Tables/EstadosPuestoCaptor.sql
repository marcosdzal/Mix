CREATE TABLE [dbo].[EstadosPuestoCaptor] (
    [Centro]         NVARCHAR (10)   NULL,
    [Ano]            INT             NULL,
    [Mes]            INT             NULL,
    [Fecha]          DATETIME        NULL,
    [PuestoTrabajo]  NVARCHAR (15)   NULL,
    [Turno]          NVARCHAR (15)   NULL,
    [FechaInicio]    DATETIME        NULL,
    [FechaFin]       DATETIME        NULL,
    [Duraccion]      INT             NULL,
    [Estado]         NVARCHAR (15)   NULL,
    [NombreEstado]   NVARCHAR (40)   NULL,
    [Aclaracion]     NVARCHAR (2000) NULL,
    [Grupo]          NVARCHAR (2000) NULL,
    [GrupoOEE]       NVARCHAR (30)   NULL,
    [EsTiempoProduc] BIT             NULL,
    [GrupoParada]    NVARCHAR (2000) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_EstadosPuestoCaptor_CentroFecha]
    ON [dbo].[EstadosPuestoCaptor]([Centro] ASC, [Fecha] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_EstadosPuestoCaptor_Fecha]
    ON [dbo].[EstadosPuestoCaptor]([Fecha] ASC);

