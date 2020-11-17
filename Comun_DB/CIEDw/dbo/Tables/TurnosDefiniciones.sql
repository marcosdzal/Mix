CREATE TABLE [dbo].[TurnosDefiniciones] (
    [Centro]     NVARCHAR (10) NULL,
    [HoraInicio] DATETIME      NULL,
    [HoraFin]    DATETIME      NULL,
    [DiaOffset]  NUMERIC (1)   NULL,
    [Turno]      NVARCHAR (15) NULL,
    [OrdenRango] TINYINT       NULL,
    [Tarea]      NVARCHAR (10) NULL
);

