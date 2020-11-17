CREATE TABLE [dbo].[Dim_ListasMateriales] (
    [Centro]             NVARCHAR (4)    NULL,
    [IdVersion]          INT             NULL,
    [Nivel]              INT             NULL,
    [Material]           NVARCHAR (18)   NULL,
    [PosListaMateriales] NVARCHAR (4)    NULL,
    [TipoPosicionLM]     NVARCHAR (1)    NULL,
    [CantidadComponente] DECIMAL (28, 3) NULL,
    [UNMedida]           NVARCHAR (4)    NULL,
    [RechazoComponente]  DECIMAL (28, 3) NULL,
    [AlternativaLM]      NVARCHAR (2)    NULL,
    [UtilizacionLM]      NVARCHAR (1)    NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Dim_ListasMateriales_CentroVersion]
    ON [dbo].[Dim_ListasMateriales]([Centro] ASC, [IdVersion] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Dim_ListasMateriales_Centro]
    ON [dbo].[Dim_ListasMateriales]([Centro] ASC);

