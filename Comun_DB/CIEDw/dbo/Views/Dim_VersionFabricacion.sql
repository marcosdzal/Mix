CREATE VIEW [dbo].[Dim_VersionFabricacion]
	AS SELECT VF.Centro + '-' + VF.MaterialPpal as CenMat_Id,
		VF.Centro + '-' +  Cast(VF.IdVersion AS VARCHAR(10)) as CenVF_Id,
		VF.Centro, 
		VF.MaterialPpal, 
		VF.VersionFabricacion, 
		VF.FechaVigencia, 
		VF.VersionPpal
FROM dbo.Dim_VersionesFabricacion AS VF