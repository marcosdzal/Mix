
CREATE VIEW [dbo].[Dim_OF]
AS
  SELECT OFC.centro + '-' + OFC.ordencaptor AS CenOrd_Id,
         OFC.centro,
         OFC.ordencaptor                    AS [Orden],
         OFC.nombreordencaptor              AS [Nombre Orden],
         OFC.descrordecaptor                AS [Descripción Orden],
         RC.articulo                        AS Artículo,
         RC.descrarticulo                   AS [Descripción Artículo],
         OFC.estadoorden                    AS [Estado Orden],
         OFC.fechacreacionorden             AS [Fecha Creación Orden],
         OFC.fechainicioreal                AS [Fecha Inicio Real]
  FROM   dbo.ofcaptor AS OFC
         LEFT OUTER JOIN dbo.referenciascaptor AS RC
                      ON OFC.centro = RC.centro
                         AND OFC.material = RC.material
UNION
SELECT DISTINCT C.Centro + '-' + C.Lote + '-' + c.Articulo AS CenOrd_Id,
		C.Centro as centro,
        C.Lote + '-' + c.Articulo AS [Orden], 
        null AS [Nombre Orden], 
        null AS [Descripción Orden], 
        C.Articulo AS Artículo, 
        null AS [Descripción Artículo], 
        null AS [Estado Orden], 
        null AS [Fecha Creación Orden], 
        null AS [Fecha Inicio Real]
  FROM dbo.Fact_ProduccionSAP as C
  WHERE NOT EXISTS (SELECT OFC.centro + '-' + OFC.ordencaptor AS CenOrd_Id
        FROM dbo.ofcaptor as OFC
        WHERE C.Centro + '-' + C.Lote + '-' + C.Articulo = OFC.centro + '-' + OFC.ordencaptor) and c.Articulo is not null