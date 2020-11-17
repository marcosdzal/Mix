CREATE TABLE [dbo].[ReferenciasCaptor] (
    [Centro]         NVARCHAR (10)   NULL,
    [Material]       NVARCHAR (20)   NULL,
    [Articulo]       NVARCHAR (40)   NULL,
    [DescrArticulo]  NVARCHAR (2000) NULL,
    [Familia]        NVARCHAR (20)   NULL,
    [EstadoRegistro] NVARCHAR (10)   NULL,
    [Activo]         BIT             NULL,
    [MaterialSAP]    NVARCHAR (18)   NULL
);

