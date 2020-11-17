CREATE TABLE [dbo].[TiemposCaptor] (
    [Centro]           NVARCHAR (10)   NULL,
    [Ano]              INT             NULL,
    [Mes]              INT             NULL,
    [Fecha]            DATETIME        NULL,
    [PuestoTrabajo]    NVARCHAR (15)   NULL,
    [Orden]            NVARCHAR (50)   NULL,
    [Turno]            NVARCHAR (15)   NULL,
    [EstadoProductivo] BIT             NULL,
    [FechaInicio]      DATETIME        NULL,
    [FechaFin]         DATETIME        NULL,
    [Totales]          NUMERIC (13, 3) NULL,
    [Buenas]           NUMERIC (13, 3) NULL,
    [TiempoCiclo]      NUMERIC (13, 3) NULL
);

