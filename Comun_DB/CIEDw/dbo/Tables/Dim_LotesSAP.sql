CREATE TABLE [dbo].[Dim_LotesSAP] (
    [Centro]            NVARCHAR (4)  NULL,
    [NumeroOrden]       NVARCHAR (12) NULL,
    [ClaseOrden]        NVARCHAR (4)  NULL,
    [TipoOrden]         NVARCHAR (2)  NULL,
    [FechaEntrada]      DATETIME      NULL,
    [FechaModificacion] DATETIME      NULL
);

