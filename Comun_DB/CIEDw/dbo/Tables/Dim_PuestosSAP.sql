CREATE TABLE [dbo].[Dim_PuestosSAP] (
    [Centro]       NVARCHAR (4)  NULL,
    [Puesto]       NVARCHAR (8)  NULL,
    [ClasePuesto]  NVARCHAR (4)  NULL,
    [NombrePuesto] NVARCHAR (40) NULL,
    [Borrado]      BIT           NULL,
    [CentroCoste]  NVARCHAR (10) NULL
);

