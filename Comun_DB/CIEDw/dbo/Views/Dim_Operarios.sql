
CREATE VIEW [dbo].[Dim_Operarios]
AS
  SELECT centro + '-' + operario AS CenOpe_Id,
         centro,
         operario,
         nombreoperario          AS [Nombre Operario],
         categoria,
         opeariounicopuesto      AS [Opeario Único Puesto],
         operarioexclusivopuesto,
         borrado
  FROM   dbo.operarioscaptor
UNION
  SELECT Centro + '-' + Operario AS CenOpe_Id, 
         Centro as centro, 
         Operario as operario, 
         NombreOperario AS [Nombre Operario], 
         '' as Categoria, 
         0 AS [Opeario Único Puesto], 
         0 as OperarioExclusivoPuesto, 
         0 as borrado
 FROM Dim_OperariosSAP
WHERE NOT EXISTS(SELECT 1 from OperariosCaptor 
                 WHERE Dim_OperariosSAP.Centro = OperariosCaptor.Centro 
                 AND Dim_OperariosSAP.Operario = OperariosCaptor.Operario)