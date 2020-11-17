CREATE TABLE [dbo].[Fact_CalidadesProduccionSAP] (
    [Puesto]   NVARCHAR (8)    NULL,
    [Calidad]  NVARCHAR (4)    NULL,
    [Lote]     NVARCHAR (10)   NULL,
    [Articulo] NVARCHAR (18)   NULL,
    [Fase]     VARCHAR (5)     NULL,
    [turno]    NVARCHAR (4)    NULL,
    [Material] NVARCHAR (18)   NULL,
    [centro]   NVARCHAR (4)    NULL,
    [fecha]    DATETIME        NULL,
    [cantidad] DECIMAL (13, 3) NULL,
    [Tipo]     NVARCHAR (1)    NULL,
    [Origen]   NVARCHAR (10)   NULL
);

