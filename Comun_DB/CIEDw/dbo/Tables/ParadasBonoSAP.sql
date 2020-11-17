CREATE TABLE [dbo].[ParadasBonoSAP] (
    [AnoBono]       INT           NULL,
    [MesBono]       INT           NULL,
    [Fecha]         DATETIME      NULL,
    [Centro]        NVARCHAR (4)  NULL,
    [Bono]          NVARCHAR (10) NULL,
    [LineaTiempo]   INT           NULL,
    [PuestoTrabajo] NVARCHAR (8)  NULL,
    [Causa]         NVARCHAR (4)  NULL,
    [HorasParada]   DATETIME      NULL,
    [TiempoParada]  FLOAT (53)    NULL
);

