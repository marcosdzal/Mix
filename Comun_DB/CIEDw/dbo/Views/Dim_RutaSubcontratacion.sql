CREATE VIEW [dbo].[Dim_RutaSubcontratacion]
	AS SELECT 
        VF.Centro + '-' + SR.Material as CenMat_Id,
	    VF.Centro + '-' + Cast(VF.IdVersion AS VARCHAR(10)) as CenVF_Id,
        VF.Centro + '-' + Cast(VF.IdVersion AS VARCHAR(10)) + '-' +  Cast(SR.Nivel AS VARCHAR(10)) + '-' + SR.Material as CenNiv_Id,
        VF.Centro + '-' + SR.Proveedor as CenPro_Id,
        VF.centro + '-' + SR.DocCompras + '-' + Cast(SR.DocComprasPos AS VARCHAR(10))   AS CenPedPos_Id,
        VF.Centro, 
        VF.MaterialPpal, 
        VF.VersionFabricacion, 
        VF.FechaVigencia, 
        VF.VersionPpal, 
        SR.Nivel, 
        SR.Material, 
        SR.DocCompras, 
        SR.DocComprasPos, 
        SR.Proveedor, 
        LM.CantidadComponente, 
        LM.UNMedida, 
        LM.RechazoComponente
FROM dbo.Dim_VersionesFabricacion AS VF INNER JOIN dbo.Dim_SubcontratacionRuta AS SR ON 
            VF.Centro = SR.Centro AND VF.IdVersion = SR.IdVersion 
    LEFT OUTER JOIN dbo.Dim_ListasMateriales AS LM ON 
            SR.Centro = LM.Centro AND SR.IdVersion = LM.IdVersion AND SR.Nivel = LM.Nivel AND SR.Material = LM.Material