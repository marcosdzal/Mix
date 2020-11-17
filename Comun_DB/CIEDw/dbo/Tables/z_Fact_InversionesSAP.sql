CREATE TABLE [dbo].[z_Fact_InversionesSAP] (
    [Fecha]        DATETIME       NULL,
    [Planta]       NVARCHAR (4)   NULL,
    [Sociedad]     NVARCHAR (4)   NULL,
    [Grupo]        NVARCHAR (255) NULL,
    [codOrden]     NVARCHAR (255) NULL,
    [Presupuesto]  FLOAT (53)     NULL,
    [Real]         FLOAT (53)     NULL,
    [Comprometido] FLOAT (53)     NULL
);

