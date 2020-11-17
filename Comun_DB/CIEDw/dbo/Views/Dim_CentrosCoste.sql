CREATE VIEW [dbo].[Dim_CentrosCoste]
	AS
  SELECT distinct 
    C.Centro,
    C.Centro + + '-' + C.CentroCoste as CenCCos_Id,
    C.NombreCentroCoste,
    C.DescrCentroCoste,
    C.MatchCode,
    C.AreaJerarquia
  FROM Dim_CentrosCosteSAP as C
  wHERE Borrado = 0

  UNION

  SELECT distinct 
    C.Centro,
    C.Centro +  '-' + C.CentroCoste as CenCCos_Id,
    C.NombreCentroCoste,
    C.DescrCentroCoste,
    C.MatchCode,
    C.AreaJerarquia
  FROM Dim_CentrosCosteSAP as C 
  WHERE NOT EXISTS(SELECT 1 FROM Dim_CentrosCosteSAP as P
                 WHERE c.Centro = p.Centro 
                 and c.CentroCoste = p.CentroCoste and p.Borrado = 0) AND C.Borrado = 1

 UNION

 SELECT C.Planta as Centro,
    C.Planta +  '-'  as CenCCos_Id,
    '' as NombreCentroCoste,
    '' as DescrCentroCoste,
    '' as MatchCode,
    '' as AreaJerarquia
  FROM Dim_Plantas as C