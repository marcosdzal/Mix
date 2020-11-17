CREATE TABLE [dbo].[PreciosVta] (
    [Ano]                  INT             NULL,
    [Mes]                  INT             NULL,
    [Centro]               NVARCHAR (4)    NULL,
    [OrgVentas]            NVARCHAR (4)    NULL,
    [ClaseCondicion]       NVARCHAR (4)    NULL,
    [CanalDistr]           NVARCHAR (2)    NULL,
    [Cliente]              NVARCHAR (10)   NULL,
    [NombreCliente]        NVARCHAR (35)   NULL,
    [Material]             NVARCHAR (18)   NULL,
    [DescrMaterial]        NVARCHAR (40)   NULL,
    [Precio]               DECIMAL (28)    NULL,
    [MonedaPrecio]         NVARCHAR (5)    NULL,
    [BasePrecio]           DECIMAL (28)    NULL,
    [UNPrecio]             NVARCHAR (3)    NULL,
    [FInicioValidez]       DATETIME        NULL,
    [FFinValidez]          DATETIME        NULL,
    [MatCliente]           NVARCHAR (35)   NULL,
    [CosteStd]             DECIMAL (28)    NULL,
    [BaseCoste]            DECIMAL (28)    NULL,
    [PrecioMonedaSociedad] DECIMAL (18, 4) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_PreciosVta_Precio]
    ON [dbo].[PreciosVta]([Centro] ASC, [Cliente] ASC, [Material] ASC, [Ano] ASC, [Mes] ASC);

