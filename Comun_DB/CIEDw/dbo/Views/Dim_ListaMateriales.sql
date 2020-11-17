CREATE VIEW [dbo].[Dim_ListaMateriales]
	AS 
	SELECT VF.Centro + '-' + LM.Material as CenMat_Id,
	VF.Centro + '-' + Cast(VF.IdVersion AS VARCHAR(10)) as CenVF_Id,
	VF.Centro + '-' + Cast(VF.IdVersion AS VARCHAR(10)) + '-' + Cast(LM.Nivel AS VARCHAR(10)) + '-' + LM.Material as CenNiv_Id,
	VF.Centro, 
	VF.MaterialPpal, 
	VF.VersionFabricacion, 
	VF.FechaVigencia, 
	VF.VersionPpal, 
	LM.Nivel, 
	LM.Material, 
	LM.TipoPosicionLM, 
	LM.CantidadComponente, 
	LM.UNMedida, 
	LM.RechazoComponente
FROM dbo.Dim_VersionesFabricacion AS VF INNER JOIN
    dbo.Dim_ListasMateriales AS LM ON 
		VF.Centro = LM.Centro AND VF.IdVersion = LM.IdVersion