CREATE VIEW [dbo].[Fact_EvolucionStock]
	AS SELECT 
		centro + '-' + material  AS CenMat_Id,
         centro + '-' + cliente   AS CenCli_Id,
         centro + '-' + Iif(proveedor = '', Subcontratista, proveedor) AS CenPro_Id,
         centro + '-' + Almacen AS CenAlm_Id,
         centro,
         costestd                 AS [Coste Std],
         stocklibre               AS [Stock Libre],
         stockcalidad             AS [Stock Calidad],
         stockbloqueado           AS [Stock Bloqueado],
         lote,
         tipostock                AS [Tipo Stock],
         almacen,
         TStock,
         FechaActualizacion as Fecha
	FROM StocksSAPEvolucion