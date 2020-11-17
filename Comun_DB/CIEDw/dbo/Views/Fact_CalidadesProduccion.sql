/*
Une las tablas de Captor y SAP
A tener en cuenta que se coje de uno o de otro porque sino sería duplicar valores
Aunque los retrabajos en si no se hacen en Captor, se informan por medio de una calidad distinta
*/
CREATE VIEW [dbo].[Fact_CalidadesProduccion]
AS
  SELECT PC.centro + '-' + PC.puestotrabajo AS CenPue_Id,
         PC.centro + '-' + PC.calidad       AS CenCal_Id,
         PC.centro + '-' + PC.orden + '-' + Cast(PC.fase AS VARCHAR(5))      AS CenOrdFas_Id,
         PC.centro + '-' + PC.turno         AS CenTur_Id,
         PC.centro + '-' + PC.orden         AS CenOrd_Id,
         PC.centro + '-' + O.material       AS CenMat_Id,
         PC.centro,
         PC.fecha,
         PC.cantidad
  FROM   dbo.calidadesproduccioncaptor AS PC
         LEFT OUTER JOIN dbo.ofcaptor AS O
                      ON PC.centro = O.centro
                         AND PC.orden = O.ordencaptor
         RIGHT OUTER JOIN dbo.CompaniasCaptor as cCap 
                      ON PC.Centro = cCap.Centro
  WHERE  (PC.fecha >= (SELECT fecha
                        FROM   dbo.fechaconsulta))
         AND PC.Fecha >= ISNULL(cCap.FechaIniModelo, '9999-12-31')

UNION ALL

  SELECT PC.centro + '-' + PC.Puesto AS CenPue_Id,
         PC.centro + '-' + PC.calidad       AS CenCal_Id,
         PC.centro + '-' + PC.Lote + '-' + '-' + PC.Articulo + '-' + PC.Fase      AS CenOrdFas_Id,
         PC.centro + '-' + PC.turno         AS CenTur_Id,
         PC.centro + '-' + PC.Lote + '-' + '-' + PC.Articulo         AS CenOrd_Id,
         PC.centro + '-' + PC.material       AS CenMat_Id,
         PC.centro,
         PC.fecha,
         PC.cantidad
  FROM   dbo.Fact_CalidadesProduccionSAP AS PC
        LEFT OUTER JOIN dbo.CompaniasCaptor as cCap 
                      ON PC.Centro = cCap.Centro
  WHERE  ( PC.fecha >= (SELECT fecha 
                         FROM   dbo.fechaconsulta) )
        AND PC.Fecha < ISNULL(cCap.FechaIniModelo, '9999-12-31')