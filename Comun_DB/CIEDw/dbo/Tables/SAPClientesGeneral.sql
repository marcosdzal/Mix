CREATE TABLE [dbo].[SAPClientesGeneral] (
    [Centro]          NVARCHAR (4)  NULL,
    [Cliente]         NVARCHAR (10) NULL,
    [Pais]            NVARCHAR (3)  NULL,
    [Nombre1]         NVARCHAR (35) NULL,
    [Nombre2]         NVARCHAR (35) NULL,
    [Poblacion]       NVARCHAR (35) NULL,
    [CodigoPostal]    NVARCHAR (10) NULL,
    [Region]          NVARCHAR (3)  NULL,
    [Calle]           NVARCHAR (35) NULL,
    [Telefono]        NVARCHAR (16) NULL,
    [Direccion]       NVARCHAR (10) NULL,
    [MatchCode1]      NVARCHAR (25) NULL,
    [MatchCode2]      NVARCHAR (25) NULL,
    [MatchCode3]      NVARCHAR (25) NULL,
    [FechaCreacion]   DATETIME      NULL,
    [GrupoCtasDeudor] NVARCHAR (4)  NULL,
    [Proveedor]       NVARCHAR (10) NULL,
    [NIF]             NVARCHAR (16) NULL,
    [VAT]             NVARCHAR (20) NULL
);

