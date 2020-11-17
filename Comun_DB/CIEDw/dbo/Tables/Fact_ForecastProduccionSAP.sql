CREATE TABLE [dbo].[Fact_ForecastProduccionSAP] (
    [Centro]        NVARCHAR (4)    NULL,
    [Fecha]         DATETIME        NULL,
    [Material]      NVARCHAR (18)   NULL,
    [PuestoTrabajo] NVARCHAR (8)    NULL,
    [Cantidad]      DECIMAL (13, 3) NULL,
    [UnidadMedida]  NVARCHAR (3)    NULL
);

