
CREATE VIEW [dbo].[Dim_TiposEstados]
AS
  SELECT centro + '-' + estado AS CenEst_Id,
         centro + '-' + GrupoOEE as CenGruOEE_Id,
         centro,
         estado,
         nombreestado          AS [Nombre Estado],
         descrestado           AS [Descripción Estado],
         grupoestados          AS [Grupo Estados],
         grupoOee              AS [GrupoOEE],
         esproduccion
  FROM   dbo.tiposestadoscaptor

UNION

  SELECT Centro + '-' + Estado AS CenEst_Id, 
         centro + '-' + '' as CenGruOEE_Id,
         Centro as centro, 
         Estado as estado, 
         NombreEstado AS [Nombre Estado], 
         NULL AS [Descripción Estado], 
         NULL AS [Grupo Estados],
         null AS [GrupoOEE],
         EsProduccion as esProduccion
 FROM Dim_EstadosProduccionSAP
    WHERE NOT EXISTS(SELECT 1 from TiposEstadosCaptor 
                 WHERE Dim_EstadosProduccionSAP.Centro = TiposEstadosCaptor.Centro 
                 AND Dim_EstadosProduccionSAP.Estado = TiposEstadosCaptor.Estado)