
CREATE VIEW [dbo].[Dim_Puestos]
AS
WITH Puestos AS (
  SELECT centro + '-' + puesto AS CenPue_Id,
         centro,
         puesto,
         nombrepuesto AS [Nombre Puesto],
         borrado
  FROM   dbo.puestoscaptor

UNION

SELECT  Centro + '-' + Puesto AS CenPue_Id,
        Centro as centro, 
        Puesto as puesto, 
        NombrePuesto as [Nombre Puesto], 
        CASE Borrado 
            WHEN 0 THEN 'OP'
            ELSE 'NOP'
        END as borrado
FROM Dim_PuestosSAP
    WHERE NOT EXISTS(SELECT 1 from PuestosCaptor 
                 WHERE Dim_PuestosSAP.Centro = PuestosCaptor.Centro 
                 AND Dim_PuestosSAP.Puesto = PuestosCaptor.Puesto)
) 
SELECT distinct P.CenPue_Id,
    P.Centro + '-' + IIF(PS.CentroCoste is null, '', PS.CentroCoste) AS CenCCos_Id,
    P.centro,
    P.puesto,
    P.[Nombre Puesto],
    P.Borrado,
    IIF(c.Activo is null, 1, C.Activo) as Activo,
    c.LineaProduccion,
    c.TipoPuesto,
    IIF(c.Seguimiento is null, 0, C.Seguimiento) as Seguimiento
FROM Puestos as P LEFT JOIN Dim_PuestosSAP as PS ON P.Centro = PS.Centro AND P.Puesto = PS.Puesto 
LEFT JOIN CustomPuestos as C ON P.Centro = C.Centro AND P.Puesto = C.Puesto