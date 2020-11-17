
CREATE VIEW [dbo].[Dim_GruposOEE]
AS
  SELECT centro + '-' + grupooee AS CenGruOEE_Id,
         centro,
         grupooee                AS [Grupo OEE],
         descrgrupooee           AS [Descripción Grupo OEE],
         esnooee,
         estadoregistro          AS [Estado Registro],
         borrado
  FROM   dbo.gruposoeecaptor

  UNION

  SELECT centro + '-' + grupooee AS CenGruOEE_Id,
         centro,
         grupooee                AS [Grupo OEE],
         descrgrupooee           AS [Descripción Grupo OEE],
         esnooee,
         null          AS [Estado Registro],
         borrado
  FROM   dbo.Dim_GruposOEESAP