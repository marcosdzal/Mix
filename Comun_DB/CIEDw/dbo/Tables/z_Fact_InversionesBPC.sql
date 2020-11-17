CREATE TABLE [dbo].[z_Fact_InversionesBPC] (
    [Fecha]        DATETIME       NULL,
    [Planta]       NVARCHAR (4)   NULL,
    [Sociedad]     NVARCHAR (4)   NULL,
    [CodInversion] NVARCHAR (100) NULL,
    [Inversion]    NVARCHAR (100) NULL,
    [Presupuesto]  FLOAT (53)     NOT NULL,
    [Real]         FLOAT (53)     NOT NULL
);

