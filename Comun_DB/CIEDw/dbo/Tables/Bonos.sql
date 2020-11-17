CREATE TABLE [dbo].[Bonos] (
    [AnoBono]             INT           NULL,
    [MesBono]             INT           NULL,
    [Centro]              NVARCHAR (4)  NULL,
    [Bono]                NVARCHAR (10) NULL,
    [FechaCreacion]       DATETIME      NULL,
    [FechaUltMod]         DATETIME      NULL,
    [TipoBono]            NVARCHAR (1)  NULL,
    [Turno]               NVARCHAR (4)  NULL,
    [FechaInicio]         DATETIME      NULL,
    [FechaCierre]         DATETIME      NULL,
    [Fecha]               DATETIME      NULL,
    [EsAPT]               BIT           NULL,
    [OrdenFabricacion]    INT           NULL,
    [TransaccionCreacion] NVARCHAR (20) NULL,
    [Borrado]             BIT           NULL,
    [FechaFin]            DATETIME      NULL,
    [Duracion]            FLOAT (53)    NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Bonos_CentroBono]
    ON [dbo].[Bonos]([Centro] ASC, [Bono] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Bonos_Fecha]
    ON [dbo].[Bonos]([Fecha] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Bonos_FechaTipo]
    ON [dbo].[Bonos]([Borrado] ASC)
    INCLUDE([Centro], [Bono], [TipoBono], [Turno], [Fecha]);

