CREATE VIEW [dbo].[Dim_TiposImputacion]
	AS
  SELECT TI.Centro + '-' + TI.TipoImputacion AS CenTImp_Id,
    TI.*
  FROM Dim_TiposImputacionSAP as TI