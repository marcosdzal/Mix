CREATE TABLE [dbo].[BonosLineas] (
    [AnoBono]                 INT           NULL,
    [MesBono]                 INT           NULL,
    [Centro]                  NVARCHAR (4)  NULL,
    [Bono]                    NVARCHAR (10) NULL,
    [Material]                NVARCHAR (18) NULL,
    [LineaBono]               INT           NULL,
    [VersionFabricacion]      NVARCHAR (4)  NULL,
    [NumeroOP]                NVARCHAR (4)  NULL,
    [ClaveControl]            NVARCHAR (4)  NULL,
    [ClaveModelo]             NVARCHAR (7)  NULL,
    [PuestoTrabajo]           NVARCHAR (8)  NULL,
    [CantBase]                REAL          NULL,
    [Lote]                    NVARCHAR (10) NULL,
    [CantidadOK]              REAL          NULL,
    [CantidadNoOK]            REAL          NULL,
    [CantidadRetrabajo]       REAL          NULL,
    [Status]                  NVARCHAR (2)  NULL,
    [SujetoLote]              BIT           NULL,
    [UNMedida]                NVARCHAR (3)  NULL,
    [OFPrevisional]           NVARCHAR (10) NULL,
    [Ubicacion]               NVARCHAR (10) NULL,
    [Colada]                  NVARCHAR (10) NULL,
    [CantidadRetrabajadaOK]   REAL          NULL,
    [CantidadRetrabajadaNoOK] REAL          NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_BonosLineas_CentroBono]
    ON [dbo].[BonosLineas]([Centro] ASC, [Bono] ASC, [LineaBono] ASC);

