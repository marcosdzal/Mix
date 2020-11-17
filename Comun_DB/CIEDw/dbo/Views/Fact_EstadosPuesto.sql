/*
Une tiempos de Captor y tiempos de SAP
Nota: No tiene en cuenta los tiempos de reproceso para las empresas que usan Captor
*/
CREATE VIEW [dbo].[Fact_EstadosPuesto]
AS
  SELECT E.centro + '-' + E.puestotrabajo AS CenPue_Id,
         E.centro + '-' + E.turno         AS CenTur_Id,
         E.centro + '-' + E.grupooee      AS CenGruOEE_Id,
         E.centro + '-' + E.estado        AS CenEst_Id,
         E.centro,
         E.fecha,
         E.fechainicio                  AS [Fecha Inicio],
         E.fechafin                     AS [Fecha Fin],
         E.duraccion                    AS Duracción,
         E.aclaracion                   AS Aclaración,
         E.grupo,
         E.Estiempoproduc,
         E.grupoparada                  AS [Grupo Parada]
  FROM   dbo.estadospuestocaptor as E
        RIGHT OUTER JOIN
						dbo.CompaniasCaptor as cCap ON E.Centro = cCap.Centro
  WHERE  ( fecha >= (SELECT fecha
                     FROM   dbo.fechaconsulta) )
         AND E.Fecha >= ISNULL(cCap.FechaIniModelo, '9999-12-31')

UNION ALL

   SELECT E.centro + '-' + E.puestotrabajo AS CenPue_Id,
         E.centro + '-' + E.turno         AS CenTur_Id,
         E.centro + '-' + E.grupooee      AS CenGruOEE_Id,
         E.centro + '-' + E.estado        AS CenEst_Id,
         E.centro,
         E.fecha,
         E.fechainicio                  AS [Fecha Inicio],
         E.fechafin                     AS [Fecha Fin],
         E.duraccion                    AS Duracción,
         E.aclaracion                   AS Aclaración,
         E.grupo,
         E.estiempoproduc,
         E.grupoparada                  AS [Grupo Parada]
  FROM   dbo.[Fact_EstadosPuestoSAP] as E
        LEFT OUTER JOIN
						dbo.CompaniasCaptor as cCap ON E.Centro = cCap.Centro
  WHERE  ( fecha >= (SELECT fecha
                     FROM   dbo.fechaconsulta) )
        AND E.Fecha < ISNULL(cCap.FechaIniModelo, '9999-12-31')