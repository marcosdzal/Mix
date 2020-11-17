CREATE TABLE [dbo].[Autocontroles] (
    [Centro]             NVARCHAR (10)   NULL,
    [Ano]                INT             NULL,
    [Mes]                INT             NULL,
    [FechaEjecucion]     DATETIME        NULL,
    [FechaImputacion]    DATETIME        NULL,
    [PuestoTrabajo]      NVARCHAR (15)   NULL,
    [Orden]              NVARCHAR (50)   NULL,
    [Turno]              NVARCHAR (15)   NULL,
    [Operario]           NVARCHAR (10)   NULL,
    [Autocontrol]        NVARCHAR (16)   NULL,
    [Norma]              NVARCHAR (16)   NULL,
    [NombreNorma]        NVARCHAR (40)   NULL,
    [Valor]              NUMERIC (17, 6) NULL,
    [Atributo]           TINYINT         NULL,
    [Anotacion]          NVARCHAR (2000) NULL,
    [DescripcionNorma]   NVARCHAR (2000) NULL,
    [NotasNorma]         NVARCHAR (2000) NULL,
    [TipoAutocontrol]    NVARCHAR (15)   NULL,
    [VersionAutocontrol] NVARCHAR (10)   NULL,
    [ToleranciaMinima]   NUMERIC (17, 6) NULL,
    [ToleranciaMaxima]   NUMERIC (17, 6) NULL,
    [TolMinCliente]      NUMERIC (17, 6) NULL,
    [TolMaxCliente]      NUMERIC (17, 6) NULL,
    [ValorNominal]       NUMERIC (17, 6) NULL,
    [InstrMedida]        NVARCHAR (10)   NULL,
    [UnidadMedida]       NVARCHAR (10)   NULL,
    [TipoOperacion]      TINYINT         NULL,
    [NotaError]          NVARCHAR (2000) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Autocontroles_CentroPuestoFecha]
    ON [dbo].[Autocontroles]([Centro] ASC, [PuestoTrabajo] ASC, [FechaImputacion] ASC);

