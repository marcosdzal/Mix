CREATE TABLE [dbo].[Dim_ClasesCalidades] (
    [TipoCalidad] TINYINT       NOT NULL,
    [Buenas]      BIT           NOT NULL,
    [Malas]       BIT           NOT NULL,
    [Neutras]     BIT           NOT NULL,
    [Descr]       NVARCHAR (20) DEFAULT ('') NOT NULL,
    [Factor]      INT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Dim_TiposCalidades] PRIMARY KEY CLUSTERED ([TipoCalidad] ASC)
);

