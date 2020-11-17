CREATE VIEW [dbo].[Dim_CentrosBeneficio]
	AS SELECT DISTINCT 
		C.Centro + '-' + CentroBeneficio as CenBen_Id,
		C.Centro, 
		C.CentroBeneficio 
	FROM AllMaterialsData as C

	UNION

	SELECT 
		P.Planta + '-' + '' as CenBen_Id,
		P.Planta as Centro,
		'' as [Centro Beneficio]
	FROM Dim_Plantas as P