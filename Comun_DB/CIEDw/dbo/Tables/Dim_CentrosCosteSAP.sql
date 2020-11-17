CREATE TABLE [dbo].[Dim_CentrosCosteSAP] (
    [Centro]            NVARCHAR (4)  NULL,
    [Sociedad]          NVARCHAR (4)  NULL,
    [CentroCoste]       NVARCHAR (10) NULL,
    [ClaseCentroCoste]  NVARCHAR (1)  NULL,
    [AreaJerarquia]     NVARCHAR (12) NULL,
    [NombreCentroCoste] NVARCHAR (20) NULL,
    [DescrCentroCoste]  NVARCHAR (40) NULL,
    [MatchCode]         NVARCHAR (20) NULL,
    [Borrado]           BIT           NULL
);

