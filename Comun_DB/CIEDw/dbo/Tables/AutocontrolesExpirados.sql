CREATE TABLE [dbo].[AutocontrolesExpirados] (
    [Centro]                NVARCHAR (10)   NULL,
    [Ano]                   INT             NULL,
    [Mes]                   INT             NULL,
    [FechaEjecucion]        DATETIME        NULL,
    [FechaImputacion]       DATETIME        NULL,
    [PuestoTrabajo]         NVARCHAR (15)   NULL,
    [Orden]                 NVARCHAR (50)   NULL,
    [Turno]                 NVARCHAR (15)   NULL,
    [Operario]              NVARCHAR (10)   NULL,
    [Autocontrol]           NVARCHAR (16)   NULL,
    [NombreNorma]           NVARCHAR (40)   NULL,
    [Anotacion]             NVARCHAR (2000) NULL,
    [DescripcionNorma]      NVARCHAR (2000) NULL,
    [NombreAutocontrol]     NVARCHAR (100)  NULL,
    [Norma]                 NVARCHAR (16)   NULL,
    [ModoLanzamiento]       TINYINT         NULL,
    [ExpiraAutomaticamente] BIT             NULL,
    [TiempoExpiracion]      INT             NULL
);

