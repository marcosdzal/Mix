CREATE TABLE [dbo].[TurnosCaptor] (
    [Centro]         NVARCHAR (10)   NULL,
    [Turno]          NVARCHAR (15)   NULL,
    [NombreTurno]    NVARCHAR (40)   NULL,
    [DescrTurno]     NVARCHAR (2000) NULL,
    [EsFestivo]      BIT             NULL,
    [EstadoRegistro] NVARCHAR (10)   NULL,
    [Activo]         BIT             NULL
);

