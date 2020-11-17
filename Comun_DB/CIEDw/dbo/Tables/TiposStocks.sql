CREATE TABLE [dbo].[TiposStocks] (
    [TipoStock]      NVARCHAR (1)  NOT NULL,
    [DescrTipoStock] NVARCHAR (20) NOT NULL,
    [Valorado]       BIT           NOT NULL,
    CONSTRAINT [PK_TiposStocks] PRIMARY KEY CLUSTERED ([TipoStock] ASC)
);

