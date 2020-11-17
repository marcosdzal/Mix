CREATE TABLE [dbo].[Dim_HojasRuta] (
    [Centro]            NVARCHAR (4)    NULL,
    [IdVersion]         INT             NULL,
    [Nivel]             INT             NULL,
    [Material]          NVARCHAR (18)   NULL,
    [Puesto]            NVARCHAR (8)    NULL,
    [NumeroOp]          NVARCHAR (4)    NULL,
    [ClaveModelo]       NVARCHAR (7)    NULL,
    [ClaveControl]      NVARCHAR (4)    NULL,
    [CantidadBase]      DECIMAL (28, 3) NULL,
    [UNMedida]          NVARCHAR (3)    NULL,
    [HMaquina]          DECIMAL (28, 3) NULL,
    [NOperarios]        DECIMAL (28, 3) NULL,
    [TMaquina]          DECIMAL (28, 3) NULL,
    [TMOD]              DECIMAL (28, 3) NULL,
    [PerfilFabricacion] NVARCHAR (4)    NULL,
    [TipoHojaRuta]      NVARCHAR (1)    NULL,
    [GrupoHojaRuta]     NVARCHAR (8)    NULL,
    [ContadorHR]        NVARCHAR (2)    NULL,
    [NCavidades]        DECIMAL (28, 3) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Dim_HojasRuta_CentroVersion]
    ON [dbo].[Dim_HojasRuta]([Centro] ASC, [IdVersion] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Dim_HojasRuta_Centro]
    ON [dbo].[Dim_HojasRuta]([Centro] ASC);

