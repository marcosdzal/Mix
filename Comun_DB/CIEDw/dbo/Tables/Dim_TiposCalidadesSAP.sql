CREATE TABLE [dbo].[Dim_TiposCalidadesSAP] (
    [Centro]         NVARCHAR (4)    NULL,
    [Calidad]        NVARCHAR (4)    NULL,
    [NombreCalidad]  NVARCHAR (30)   NULL,
    [DescrCalidad]   NVARCHAR (2000) NULL,
    [TipoCalidad]    TINYINT         NULL,
    [EstadoRegistro] NVARCHAR (10)   NULL,
    [RatioOEE]       NUMERIC (17, 6) NULL,
    [Factor]         INT             NULL
);

