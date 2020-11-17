CREATE TABLE [dbo].[ClasesEntregas] (
    [Centro]                   NVARCHAR (4)  NOT NULL,
    [ClaseEntrega]             NVARCHAR (4)  NOT NULL,
    [DenominacionClaseEntrega] NVARCHAR (50) NOT NULL,
    [EsVenta]                  BIT           NOT NULL,
    [EsExpedicion]             BIT           NOT NULL,
    [Gratuito]                 BIT           NOT NULL,
    [FactorEntrega]            SMALLINT      NULL
);

