CREATE TABLE [dbo].[TiposCalidadesCaptor] (
    [Centro]         NVARCHAR (10)   NULL,
    [Calidad]        NVARCHAR (15)   NULL,
    [NombreCalidad]  NVARCHAR (255)  NULL,
    [DescrCalidad]   NVARCHAR (2000) NULL,
    [TipoCalidad]    TINYINT         NULL,
    [EstadoRegistro] NVARCHAR (10)   NULL,
    [RatioOEE]       NUMERIC (17, 6) NULL,
    [Factor]         INT             NULL,
    [Activo]         BIT             DEFAULT ((0)) NOT NULL
);

