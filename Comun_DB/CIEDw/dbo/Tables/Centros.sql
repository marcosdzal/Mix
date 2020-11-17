CREATE TABLE [dbo].[Centros] (
    [Empresa]              NVARCHAR (4)   NOT NULL,
    [Centro]               NVARCHAR (20)  NOT NULL,
    [DenominacionCentro]   NVARCHAR (200) NOT NULL,
    [UN]                   NVARCHAR (20)  NOT NULL,
    [Linea]                NVARCHAR (50)  NOT NULL,
    [Grupo]                NVARCHAR (30)  NOT NULL,
    [Borrar]               BIT            NOT NULL,
    [NoUsar]               BIT            NOT NULL,
    [BarCode]              BIT            NOT NULL,
    [CoordenadaX]          SMALLINT       NOT NULL,
    [CoordenadaY]          SMALLINT       NOT NULL,
    [CaptorActivo]         BIT            NOT NULL,
    [CaptorUtillajes]      BIT            NOT NULL,
    [CaptorUtillajesDesde] DATE           NULL,
    [CuadroMando]          BIT            NULL
);

