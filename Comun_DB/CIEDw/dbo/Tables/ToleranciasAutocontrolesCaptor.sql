CREATE TABLE [dbo].[ToleranciasAutocontrolesCaptor] (
    [Centro]                  NVARCHAR (10)   NULL,
    [Norma]                   NVARCHAR (16)   NULL,
    [NombreNorma]             NVARCHAR (40)   NULL,
    [ValorNominal]            NUMERIC (17, 6) NULL,
    [ToleranciaMaxima]        NUMERIC (17, 6) NULL,
    [ToleranciaMinima]        NUMERIC (17, 6) NULL,
    [ToleranciaMinimaCliente] NUMERIC (17, 6) NULL,
    [ToleranciaMaximaCliente] NUMERIC (17, 6) NULL
);

