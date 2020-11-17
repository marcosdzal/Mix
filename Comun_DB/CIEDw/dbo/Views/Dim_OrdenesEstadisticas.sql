
CREATE VIEW [dbo].[Dim_OrdenesEstadisticas]
AS
  SELECT centro + '-' + orden AS CenOrd_Id,
         orden,
         descrorden           AS [Descripción Orden],
         claseorden           AS [Clase Orden],
         centro,
         fechaentrada         AS [Fecha Entrada],
         fechaliberacion      AS [Fecha Liberación],
         centrobeneficio      AS [Centro Beneficio],
         claseobjeto          AS [Clase Objeto],
         procesofabricacion   AS [Proceso Fabricación],
         versionfab           AS [Versión Fabricación]
  FROM   dbo.sapordersstat
