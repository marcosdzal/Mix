CREATE TABLE [dbo].[Fact_PresupuestoVentasSAP] (
    [Centro]            NVARCHAR (4)    NULL,
    [FechaDesde]        DATETIME        NULL,
    [FechaHasta]        DATETIME        NULL,
    [Org.Vtas]          NVARCHAR (50)   NULL,
    [Sociedad]          NVARCHAR (50)   NULL,
    [SociedadCO]        NVARCHAR (50)   NULL,
    [Cliente]           NVARCHAR (50)   NULL,
    [Material]          NVARCHAR (18)   NULL,
    [Canal]             NVARCHAR (50)   NULL,
    [Cantidad]          DECIMAL (18, 3) NULL,
    [Valor]             DECIMAL (18, 3) NULL,
    [ClaveDistribucion] INT             NULL
);

