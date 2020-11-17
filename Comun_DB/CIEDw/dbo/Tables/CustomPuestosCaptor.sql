CREATE TABLE [dbo].[CustomPuestosCaptor] (
    [Centro]          NVARCHAR (10) NOT NULL,
    [Puesto]          NVARCHAR (15) NOT NULL,
    [Activo]          BIT           DEFAULT ((0)) NOT NULL,
    [LineaProduccion] NVARCHAR (50) NULL,
    [TipoPuesto]      NVARCHAR (50) CONSTRAINT [DF_CustomPuestosCaptor_TipoPuesto] DEFAULT ('') NULL,
    [Seguimiento]     BIT           DEFAULT ((1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Centro] ASC, [Puesto] ASC)
);

