CREATE TABLE [dbo].[SAPPreciosVentas] (
    [Centro]   NVARCHAR (4)  NULL,
    [Ano]      INT           NULL,
    [Mes]      INT           NULL,
    [Entrega]  NVARCHAR (10) NULL,
    [Cliente]  NVARCHAR (10) NULL,
    [Material] NVARCHAR (18) NULL,
    [Precio]   REAL          NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_SAPPreciosVentas_Precios]
    ON [dbo].[SAPPreciosVentas]([Centro] ASC, [Ano] ASC, [Mes] ASC, [Material] ASC);

