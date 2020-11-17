
CREATE VIEW [dbo].[Dim_OFFases]
AS
  SELECT centro + '-' + ordencaptor + '-' + Cast(fase AS VARCHAR(5)) AS CenOrdFas_Id,
         centro,
         fase,
         version                    AS Versión,
         nombrefase                 AS [Nombre Fase],
         descrfase                  AS [Descripción Fase],
         cantidadtotal              AS [Cantidad Total],
         cantidadok                 AS [Cantidad OK],
         grupopuestos               AS [Grupo Puestos],
         tiempostd                  AS [Tiempo Std],
         cadencia,
         fechainiciorealfase        AS [Fecha Inicio Real Fase],
         estadofase                 AS [Estado Fase],
         estadoregistroorden        AS [Estado Registro Orden],
         estadoregistrofase         AS [Estado Registro Fase],
         esficticia,
         usuario
  FROM   dbo.offasescaptor
UNION
  SELECT distinct C.Centro + '-' + C.Lote + '-' + '-' + c.Articulo + '-' + Cast(c.fase AS VARCHAR(5)) AS CenOrdFas_Id, 
				Centro, 
				Fase, 
				null AS Versión, 
				null AS [Nombre Fase], 
				null AS [Descripción Fase], 
                null AS [Cantidad Total], 
				null AS [Cantidad OK], 
				null AS [Grupo Puestos], 
				null AS [Tiempo Std], 
				null as Cadencia, 
				null AS [Fecha Inicio Real Fase], 
                null AS [Estado Fase], 
				null AS [Estado Registro Orden], 
				null AS [Estado Registro Fase], 
				null as EsFicticia, 
				null as Usuario
  FROM dbo.Fact_ProduccionSAP as C
  WHERE NOT EXISTS (SELECT 1
        FROM  dbo.offasescaptor as OFCF
        WHERE C.Centro + '-' + C.Lote + '-' + '-' + c.Articulo + '-' + Cast(c.fase AS VARCHAR(5))  = 
                    OFCF.centro + '-' + OFCF.ordencaptor + '-' + Cast(OFCF.fase AS VARCHAR(5))) and c.Articulo is not null