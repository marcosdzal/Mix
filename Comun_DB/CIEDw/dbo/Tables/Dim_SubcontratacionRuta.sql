CREATE TABLE [dbo].[Dim_SubcontratacionRuta] (
    [Centro]        NVARCHAR (4)  NULL,
    [IdVersion]     INT           NULL,
    [Nivel]         INT           NULL,
    [Material]      NVARCHAR (18) NULL,
    [DocCompras]    NVARCHAR (10) NULL,
    [DocComprasPos] INT           NULL,
    [Proveedor]     NVARCHAR (10) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Dim_SubcontratacionRuta_CentroVersion]
    ON [dbo].[Dim_SubcontratacionRuta]([Centro] ASC, [IdVersion] ASC);

