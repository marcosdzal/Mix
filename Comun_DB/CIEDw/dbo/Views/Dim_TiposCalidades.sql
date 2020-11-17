
CREATE VIEW [dbo].[Dim_TiposCalidades]
AS
  SELECT centro + '-' + calidad AS CenCal_Id,
         centro,
         calidad,
         nombrecalidad          AS [Nombre Calidad],
         descrcalidad           AS [Descripción Calidad],
         tipocalidad            AS [Tipo Calidad],
         estadoregistro         AS [Estado Registro],
         ratiooee               AS [Ratio OEE],
         factor
  FROM   dbo.tiposcalidadescaptor

UNION

  SELECT Centro + '-' + Calidad AS CenCal_Id, 
         Centro as centro, 
         Calidad as calidad, 
         NombreCalidad AS [Nombre Calidad], 
         null AS [Descripción Calidad], 
         TipoCalidad AS [Tipo Calidad],
         'OP' AS [Estado Registro], 
         0 AS [Ratio OEE], -
         Factor AS Factor 
  FROM Dim_TiposCalidadesSAP
    WHERE NOT EXISTS(SELECT 1 FROM TiposCalidadesCaptor 
                 WHERE Dim_TiposCalidadesSAP.Centro = TiposCalidadesCaptor.Centro 
                 and Dim_TiposCalidadesSAP.Calidad = TiposCalidadesCaptor.Calidad)