CREATE TABLE [dbo].[Fact_EstadosPuestoSAP] (
    [Centro]         NVARCHAR (10)   NULL,
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
    [GrupoParada]    NVARCHAR (2000) NULL,
    [Origen]         VARCHAR (50)    NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_EstadosPuestoSAP_CentroFecha]
    ON [dbo].[Fact_EstadosPuestoSAP]([Centro] ASC, [Fecha] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_EstadosPuestoSAP_Fecha]
    ON [dbo].[Fact_EstadosPuestoSAP]([Fecha] ASC);

