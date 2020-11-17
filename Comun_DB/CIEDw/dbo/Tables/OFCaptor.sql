CREATE TABLE [dbo].[OFCaptor] (
    [Centro]              NVARCHAR (10)   NULL,
    [OrdenCaptor]         NVARCHAR (50)   NULL,
    [Version]             NVARCHAR (10)   NULL,
    [NombreOrdenCaptor]   NVARCHAR (40)   NULL,
    [DescrOrdeCaptor]     NVARCHAR (2000) NULL,
    [Material]            NVARCHAR (20)   NULL,
    [FechaInicioReal]     DATETIME        NULL,
    [EstadoOrden]         NVARCHAR (10)   NULL,
    [FechaCreacionOrden]  DATETIME        NULL,
    [Usuario]             NVARCHAR (20)   NULL,
    [EstadoRegistroOrden] NVARCHAR (10)   NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_OFCaptor_CentroOrden]
    ON [dbo].[OFCaptor]([Centro] ASC, [OrdenCaptor] ASC);

