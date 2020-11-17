CREATE TABLE [dbo].[Fechas] (
    [Fecha]     DATE          NOT NULL,
    [Mes]       INT           NULL,
    [NombreMes] NVARCHAR (20) NULL,
    [MesCorto]  NVARCHAR (3)  NULL,
    [Trimestre] NVARCHAR (2)  NULL,
    [Ano]       INT           NULL,
    [DiaSemana] NVARCHAR (20) NULL,
    [Semana]    INT           NULL,
    [AnoMes]    NVARCHAR (7)  NULL,
    CONSTRAINT [PK_Fechas] PRIMARY KEY CLUSTERED ([Fecha] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Fechas_Fecha]
    ON [dbo].[Fechas]([Fecha] ASC);

