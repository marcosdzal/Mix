

CREATE VIEW [DataMart].[Dim_FamiliaEstrategica]
AS
  SELECT 
  codFamiliaEstrategica, 
  FamiliaEstrategica
  FROM  [DataMart].[z_SAPFamiliaEstrategica] 
UNION
 SELECT
 '00000' as codFamiliaEstrategica,
 'Sin Asignar' as FamiliaEstrategica