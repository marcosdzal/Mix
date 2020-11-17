CREATE TABLE [dbo].[SAPOrdersStat] (
    [Orden]              VARCHAR (12) NULL,
    [ClaseOrden]         VARCHAR (4)  NULL,
    [TipoOrden]          INT          NULL,
    [UsuarioCrea]        VARCHAR (12) NULL,
    [FechaEntrada]       DATETIME     NULL,
    [DescrOrden]         VARCHAR (40) NULL,
    [Sociedad]           VARCHAR (4)  NULL,
    [Centro]             VARCHAR (4)  NULL,
    [Division]           VARCHAR (4)  NULL,
    [SociedadCO]         VARCHAR (4)  NULL,
    [ClaveColector]      VARCHAR (23) NULL,
    [Status]             INT          NULL,
    [FechaLiberacion]    DATETIME     NULL,
    [CentroBeneficio]    VARCHAR (10) NULL,
    [ClaveDesviacion]    VARCHAR (6)  NULL,
    [ClaseObjeto]        VARCHAR (2)  NULL,
    [ProcesoFabricacion] INT          NULL,
    [TipoApros]          VARCHAR (4)  NULL,
    [Material]           INT          NULL,
    [VersionFab]         VARCHAR (4)  NULL
);

