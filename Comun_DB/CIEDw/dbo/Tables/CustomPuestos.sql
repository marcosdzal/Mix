CREATE TABLE [dbo].[CustomPuestos] (
    [Centro]          NVARCHAR (10) NOT NULL,
    [Puesto]          NVARCHAR (15) NOT NULL,
    [Activo]          BIT           DEFAULT ((1)) NOT NULL,
    [LineaProduccion] NVARCHAR (50) NULL,
    [TipoPuesto]      NVARCHAR (50) NULL,
    [Seguimiento]     BIT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Centro] ASC, [Puesto] ASC)
);

