CREATE TABLE [dbo].[AutocontrolesSinCubrir] (
    [Centro]           NVARCHAR (10)   NULL,
    [Ano]              INT             NULL,
    [Mes]              INT             NULL,
    [FechaEjecucion]   DATETIME        NULL,
    [FechaImputacion]  DATETIME        NULL,
    [PuestoTrabajo]    NVARCHAR (15)   NULL,
    [Orden]            NVARCHAR (50)   NULL,
    [Turno]            NVARCHAR (15)   NULL,
    [Operario]         NVARCHAR (10)   NULL,
    [Autocontrol]      NVARCHAR (16)   NULL,
    [Norma]            NVARCHAR (16)   NULL,
    [NombreNorma]      NVARCHAR (40)   NULL,
    [Valor]            NUMERIC (17, 6) NULL,
    [Atributo]         TINYINT         NULL,
    [Anotacion]        NVARCHAR (2000) NULL,
    [DescripcionNorma] NVARCHAR (2000) NULL,
    [NotasNorma]       NVARCHAR (2000) NULL,
    [TipoAutocontrol]  NVARCHAR (15)   NULL
);

