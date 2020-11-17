CREATE TABLE [dbo].[Dim_TurnosDefinicionesSAP] (
    [Centro]     NVARCHAR (4) NOT NULL,
    [Turno]      NVARCHAR (4) NOT NULL,
    [HoraInicio] DATETIME     NULL,
    [HoraFin]    DATETIME     NULL,
    [OrdenRango] TINYINT      NULL
);

