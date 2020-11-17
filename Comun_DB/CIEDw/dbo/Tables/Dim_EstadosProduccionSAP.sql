CREATE TABLE [dbo].[Dim_EstadosProduccionSAP] (
    [Centro]       NVARCHAR (4)    NULL,
    [Estado]       NVARCHAR (4)    NULL,
    [NombreEstado] NVARCHAR (30)   NULL,
    [DescrEstado]  NVARCHAR (2000) NULL,
    [GrupoEstados] TINYINT         NULL,
    [EsProduccion] BIT             NULL,
    [GrupoOEE]     NVARCHAR (30)   NULL
);

