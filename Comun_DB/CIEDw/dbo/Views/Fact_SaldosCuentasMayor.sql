

/*Se crea la fecha a partir de año y mes de la tabla, para cruzar con la dim fechas*/
CREATE VIEW [dbo].[Fact_SaldosCuentasMayor]
AS
  WITH scm
       AS (SELECT centro,
                  sociedad,
                  cuentamayor                                            AS
                  [Cuenta Mayor]
                     ,
                  Cast(Cast(ejercicio AS VARCHAR(4)) + '/'
                       + Cast(periodo AS VARCHAR(2)) + '/1' AS DATETIME) AS
                  Fecha,
                  monedasociedad                                         AS
                     [Moneda Sociedad],
                  importe
           FROM   dbo.sapsaldoscuentasmayor)
  SELECT centro AS Centro,
         sociedad AS Sociedad,
         [cuenta mayor] AS [Cuenta Mayor],
         fecha AS Fecha,
         [moneda sociedad] AS [Moneda Sociedad],
         importe AS Importe
  FROM   scm AS SCM_1
  WHERE  ( fecha >= (SELECT fecha
                     FROM   dbo.fechaconsulta) )
