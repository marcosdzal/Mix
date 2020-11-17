CREATE TABLE [dbo].[TiposEstadosCaptor] (
    [Centro]       NVARCHAR (10)   NULL,
    [NombreEstado] NVARCHAR (40)   NULL,
    [DescrEstado]  NVARCHAR (2000) NULL,
    [GrupoEstados] TINYINT         NULL,
    [EsProduccion] BIT             NULL,
    [Estado]       NVARCHAR (15)   NULL,
    [GrupoOEE]     NVARCHAR (30)   NULL
);

