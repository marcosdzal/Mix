CREATE TABLE [dbo].[Fact_PresupuestoComprasSAP] (
    [Centro]       NVARCHAR (4)  NULL,
    [Ejercicio]    NVARCHAR (4)  NULL,
    [Mes]          NVARCHAR (2)  NULL,
    [Proveedor]    NVARCHAR (10) NULL,
    [Material]     NVARCHAR (18) NULL,
    [Cantidad]     DECIMAL (28)  NULL,
    [UnidadMedida] NVARCHAR (3)  NULL
);

