CREATE TABLE [dbo].[Fact_SaldosCuentasMayorDiario] (
    [Centro]         NVARCHAR (4)  NULL,
    [Sociedad]       NVARCHAR (4)  NULL,
    [Fecha]          DATE          NULL,
    [CuentaMayor]    NVARCHAR (10) NULL,
    [Ejercicio]      INT           NULL,
    [Periodo]        INT           NULL,
    [MonedaSociedad] NVARCHAR (5)  NULL,
    [Importe]        REAL          NULL
);

