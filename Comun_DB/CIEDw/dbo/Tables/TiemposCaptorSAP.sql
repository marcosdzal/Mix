CREATE TABLE [dbo].[TiemposCaptorSAP] (
    [AnoBono]            INT           NULL,
    [MesBono]            INT           NULL,
    [Centro]             NVARCHAR (4)  NULL,
    [Fecha]              DATETIME      NULL,
    [Turno]              NVARCHAR (4)  NULL,
    [Material]           NVARCHAR (18) NULL,
    [VersionFabricacion] NVARCHAR (4)  NULL,
    [NumeroOp]           NVARCHAR (4)  NULL,
    [PuestoTrabajo]      NVARCHAR (8)  NULL,
    [CodigoTiempo]       NVARCHAR (4)  NULL,
    [TiempoProd]         REAL          NULL,
    [TiempoPara]         REAL          NULL,
    [BonoTiempo]         INT           NULL,
    [FechaCreacion]      DATE          NULL
);

