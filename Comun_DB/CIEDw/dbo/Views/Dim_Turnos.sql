
CREATE VIEW [dbo].[Dim_Turnos]
AS
  SELECT centro + '-' + turno AS CenTur_Id,
         centro,
         turno,
         nombreturno          AS [Nombre Turno],
         descrturno           AS [Descripción Turno]
  FROM   dbo.turnoscaptor

UNION

  SELECT centro + '-' + turno AS CenTur_Id,
         Centro, 
         Turno, 
         Turno AS NombreTurno, 
         NULL AS [Descripción Turno]
  FROM Dim_TurnosSAP
    WHERE NOT EXISTS(SELECT 1 from TurnosCaptor 
                 WHERE Dim_TurnosSAP.Centro = TurnosCaptor.Centro 
                 AND Dim_TurnosSAP.Turno = TurnosCaptor.Turno)