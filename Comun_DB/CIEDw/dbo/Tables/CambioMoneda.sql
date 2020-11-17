CREATE TABLE [dbo].[CambioMoneda] (
    [MonedaOrigen]    NVARCHAR (3) NOT NULL,
    [MonedaDestino]   NVARCHAR (3) NOT NULL,
    [CantidadDestino] FLOAT (53)   NOT NULL,
    CONSTRAINT [PK_CambioMoneda] PRIMARY KEY CLUSTERED ([MonedaOrigen] ASC, [MonedaDestino] ASC)
);

