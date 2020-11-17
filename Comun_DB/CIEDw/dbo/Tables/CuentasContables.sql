CREATE TABLE [dbo].[CuentasContables] (
    [PlanContable] NVARCHAR (4)  NOT NULL,
    [Cuenta]       NVARCHAR (10) NOT NULL,
    [TextoCuenta]  NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_CuentasContables] PRIMARY KEY CLUSTERED ([PlanContable] ASC, [Cuenta] ASC)
);

