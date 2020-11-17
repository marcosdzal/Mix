CREATE TABLE [dbo].[Dim_CuentasContablesSAP] (
    [Centro]           NVARCHAR (4)  NOT NULL,
    [PlanContable]     NVARCHAR (4)  NOT NULL,
    [Cuenta]           NVARCHAR (10) NOT NULL,
    [CuentaBalance]    BIT           NULL,
    [GrupoCuenta]      NVARCHAR (40) NULL,
    [TextoBreveCuenta] NVARCHAR (20) NULL,
    [TextoDescrCuenta] NVARCHAR (50) NULL,
    [MatchCode]        NVARCHAR (25) NULL,
    CONSTRAINT [PK_Dim_CuentasContablesSAP] PRIMARY KEY CLUSTERED ([Centro] ASC, [PlanContable] ASC, [Cuenta] ASC)
);

