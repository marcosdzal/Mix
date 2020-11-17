CREATE TABLE [dbo].[Dim_TiposImputacionSAP] (
    [Centro]                                 NVARCHAR (4)  NULL,
    [TipoImputacion]                         NVARCHAR (1)  NULL,
    [DescrTipoImputacion]                    NVARCHAR (20) NULL,
    [ContabilizacionConsumoCompras]          BIT           NULL,
    [ImputacionModificable]                  BIT           NULL,
    [ImputacionModificableRecepcionFactura]  BIT           NULL,
    [EntradaMercancias]                      BIT           NULL,
    [EntradaMercanciasObligatorio]           BIT           NULL,
    [EntradaMercanciasNoValorada]            BIT           NULL,
    [EntradaMercanciasNoValoradaObligatoria] BIT           NULL,
    [RecepcionFactura]                       BIT           NULL,
    [RecepcionFacturaObligatorio]            BIT           NULL,
    [ModificacionCuenta]                     NVARCHAR (3)  NULL,
    [DynproImputacion]                       NVARCHAR (1)  NULL,
    [StockEspecial]                          NVARCHAR (1)  NULL
);

