/*
Une información de Captor, Producción "normal" de SAP y Retrabajos de SAP
Los retrabajos son para todas las plantas ya que en Captor no se gestionan
*/
CREATE VIEW [dbo].[Fact_Produccion]
AS
/* Captor */
  SELECT C.centro + '-' + C.puestotrabajo AS CenPue_Id,
         C.centro + '-' + C.turno         AS CenTur_Id,
         C.centro + '-' + O.material      AS CenMat_Id,
         C.centro + '-' + C.orden         AS CenOrd_Id,
         C.centro + '-' + C.orden + '-' + Cast(C.fase AS VARCHAR(10))    AS CenOrdFas_Id,
         C.Centro as centro,
         C.Fecha as fecha,
         C.Cantidad as cantidad,
         C.CantidadTotal - C.Cantidad as cantidadNoOK,
         C.cantidadtotal as cantidadTotalProduccion,
         0 as cantidadRetrabajo,
         0 as cantidadRetrabajadaOK,
		 0 as cantidadRetrabajadaNoOK,
         0 as cantidadTotalReproceso,
         C.fechainicio,
         C.fechafin,
         C.cantidadtotal,
         F.FactorPLC as NCavidades,
         F.TiempoStd / 3600 as TMaquina,
         null as HMaquina,
         'Captor' as Origen
  FROM   dbo.produccioncaptor AS C
        LEFT OUTER JOIN dbo.ofcaptor AS O
            ON C.centro = O.centro
                AND C.orden = O.ordencaptor
        LEFT JOIN OFFasesCaptor as F
            ON O.Centro = C.Centro
                AND C.Orden = F.OrdenCaptor
                AND C.Fase = F.Fase
        RIGHT OUTER JOIN dbo.CompaniasCaptor as cCap 
                ON C.Centro = cCap.Centro
  WHERE   C.fecha >= (SELECT fecha FROM   dbo.fechaconsulta)
          AND C.Fecha >= ISNULL(cCap.FechaIniModelo, '9999-12-31')

UNION ALL

/* Produccion SAP */
  SELECT  C.Centro + '-' + C.Puesto AS CenPue_Id, 
		C.Centro + '-' + C.Turno AS CenTur_Id, 
		C.Centro + '-' + C.Material AS CenMat_Id, 
		C.Centro + '-' + C.Lote + '-' + c.Articulo AS CenOrd_Id, 
        C.Centro + '-' + C.Lote + '-' + '-' + C.Articulo + '-' + Cast(C.fase AS VARCHAR(10)) AS CenOrdFas_Id, 
		C.Centro as centro, 
		C.Fecha as fecha, 
		C.cantidad,
		C.cantidadNoOK,
        C.cantidadTotalProduccion,
		C.CantidadRetrabajo as cantidadRetrabajo,
        C.cantidadRetrabajadaOK,
		C.cantidadRetrabajadaNoOK,
        C.cantidadTotalReproceso,
		C.FechaInicio, 
		C.FechaFin, 
		C.CantidadTotal,
        IIF(HR.NCavidades IS NULL or HR.NCavidades = 0, 1, HR.NCavidades) as NCavidades,
        HR.TMaquina,
        HR.HMaquina,
        'SAPProd' as Origen
  FROM  dbo.Fact_ProduccionSAP as C
         LEFT JOIN Dim_HojaRuta as HR
            ON C.Centro = HR.Centro 
                    AND C.Material = HR.MaterialPpal
                    AND C.VersionFabricacion = HR.VersionFabricacion
                    AND C.Puesto = HR.Puesto
                    AND C.ClaveControl = HR.ClaveControl
        LEFT OUTER JOIN	dbo.CompaniasCaptor as cCap 
                      ON C.Centro = cCap.Centro
    WHERE        (C.Fecha >= (SELECT Fecha FROM dbo.FechaConsulta)) 
            AND C.Fecha < ISNULL(cCap.FechaIniModelo, '9999-12-31') 
            AND C.Tipo != 'R'

UNION ALL

/* Retrabajos SAP */
  SELECT  C.Centro + '-' + C.Puesto AS CenPue_Id, 
		C.Centro + '-' + C.Turno AS CenTur_Id, 
		C.Centro + '-' + C.Material AS CenMat_Id, 
		C.Centro + '-' + C.Lote + '-' + c.Articulo AS CenOrd_Id, 
        C.Centro + '-' + C.Lote + '-' + '-' + C.Articulo + '-' + Cast(C.fase AS VARCHAR(10)) AS CenOrdFas_Id, 
		C.Centro as centro, 
		C.Fecha as fecha, 
		C.cantidad,
		C.cantidadNoOK,
        C.cantidadTotalProduccion,
		C.CantidadRetrabajo as cantidadRetrabajo,
        C.cantidadRetrabajadaOK,
		C.cantidadRetrabajadaNoOK,
        C.cantidadTotalReproceso,
		C.FechaInicio, 
		C.FechaFin, 
		C.CantidadTotal,
        IIF(HR.NCavidades IS NULL or HR.NCavidades = 0, 1, HR.NCavidades) as NCavidades,
        HR.TMaquina,
        HR.HMaquina,
        'SAPRetrab' as Origen
  FROM    dbo.Fact_ProduccionSAP as C
            LEFT JOIN Dim_HojaRuta as HR
                ON C.Centro = HR.Centro 
                    AND C.Material = HR.MaterialPpal
                    AND C.VersionFabricacion = HR.VersionFabricacion
                    AND C.Puesto = HR.Puesto
                    AND C.ClaveControl = HR.ClaveControl
    WHERE        (C.Fecha >= (SELECT Fecha FROM dbo.FechaConsulta)) 
            AND C.Tipo = 'R'