
/*Se realiza la union de las tablas StockNoValoradoPeriodo y StockValoradoPeriodo se diferencia por el tipo de stock, los no valorados tipostock = K*/
CREATE VIEW [dbo].[Fact_StockPeriodos]
AS
  WITH temp
       AS (SELECT centro,
                  material,
                  cliente,
                  proveedor,
                  Cast(Cast(ano AS VARCHAR(4)) + '/'
                       + Cast(mes AS VARCHAR(2)) + '/1' AS DATETIME) AS Fecha,
                  costestd,
                  stock,
                  tipostock,
                  '' AS Valor,
                  Almacen
           FROM   dbo.stocknovaloradoperiodo
           UNION
           SELECT centro,
                  material,
                  cliente,
                  proveedor,
                  Cast(Cast(ano AS VARCHAR(4)) + '/'
                       + Cast(mes AS VARCHAR(2)) + '/1' AS DATETIME) AS Fecha,
                  costestd,
                  stock,
                  tipostock,
                  valor,
                  Almacen
           FROM   dbo.stockvaloradoperiodo)
  SELECT centro + '-' + material  AS CenMat_Id,
         centro + '-' + cliente   AS CenCli_Id,
         centro + '-' + proveedor AS CenPro_Id,
         centro + '-' + Almacen AS CenAlm_Id,
         centro,
         fecha,
         costestd                 AS [Coste Std],
         stock,
         tipostock                AS [Tipo Stock],
         valor
  FROM   temp AS temp_1
  WHERE  ( fecha >= (SELECT fecha
                     FROM   dbo.fechaconsulta) )