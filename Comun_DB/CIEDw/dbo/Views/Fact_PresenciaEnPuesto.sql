

CREATE VIEW [dbo].[Fact_PresenciaEnPuesto]
AS
  SELECT centro + '-' + puestotrabajo        AS CenPue_Id,
         centro + '-' + turno                AS CenTur_Id,
         centro + '-' + worker               AS CenOpe_Id,
         centro,
         fecha,
         fechainicio                         AS [Fecha Inicio],
         fechafin                            AS [Fecha Fin],
         Datediff(mi, fechainicio, fechafin) AS Duración
  FROM   dbo.presenciaenpuestocaptor
  WHERE  ( fecha >= (SELECT fecha
                     FROM   dbo.fechaconsulta) )