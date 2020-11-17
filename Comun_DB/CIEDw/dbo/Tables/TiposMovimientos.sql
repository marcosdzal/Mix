CREATE TABLE [dbo].[TiposMovimientos] (
    [Centro]    NVARCHAR (10) NOT NULL,
    [ClaseMov]  NVARCHAR (3)  NOT NULL,
    [ClaseDoc]  NVARCHAR (2)  NOT NULL,
    [TipoStock] NVARCHAR (1)  NOT NULL,
    [TipoMov]   NVARCHAR (20) NOT NULL,
    [Valorar]   BIT           NOT NULL,
    [Signo]     INT           NOT NULL,
    CONSTRAINT [PK_TiposMovimientos] PRIMARY KEY CLUSTERED ([Centro] ASC, [ClaseMov] ASC, [ClaseDoc] ASC, [TipoStock] ASC)
);

