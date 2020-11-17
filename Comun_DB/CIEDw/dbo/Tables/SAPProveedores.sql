CREATE TABLE [dbo].[SAPProveedores] (
    [Centro]         NVARCHAR (4)   NULL,
    [Sociedad]       NVARCHAR (4)   NULL,
    [GrupoCtas]      NVARCHAR (4)   NULL,
    [Proveedor]      NVARCHAR (10)  NULL,
    [Nombre1]        NVARCHAR (35)  NULL,
    [Nombre2]        NVARCHAR (35)  NULL,
    [Calle]          NVARCHAR (35)  NULL,
    [Edificio]       NVARCHAR (10)  NULL,
    [Poblacion]      NVARCHAR (35)  NULL,
    [Pais]           NVARCHAR (3)   NULL,
    [VAN]            NVARCHAR (20)  NULL,
    [NIF]            NVARCHAR (16)  NULL,
    [FechaCreacion]  DATETIME       NULL,
    [FamiliaProv1]   NVARCHAR (30)  NULL,
    [FamiliaProv2]   NVARCHAR (30)  NULL,
    [FormaPago]      NVARCHAR (4)   NULL,
    [DescrFormaPago] NVARCHAR (50)  NULL,
    [CodigoPostal]   NVARCHAR (10)  NULL,
    [Idioma]         NVARCHAR (1)   NULL,
    [Telefono]       NVARCHAR (16)  NULL,
    [Email]          NVARCHAR (241) NULL
);

