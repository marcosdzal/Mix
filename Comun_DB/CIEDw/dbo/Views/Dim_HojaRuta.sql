CREATE VIEW [dbo].[Dim_HojaRuta]
	AS SELECT 
        VF.Centro + '-' + HR.Material as CenMat_Id,
	    VF.Centro + '-' + Cast(VF.IdVersion AS VARCHAR(10)) as CenVF_Id,
        VF.Centro + '-' + Cast(VF.IdVersion AS VARCHAR(10)) + '-' + Cast(HR.Nivel AS VARCHAR(10)) + '-' + VF.MaterialPpal as CenNiv_Id,
		VF.Centro + '-' + HR.Puesto as CenPue_Id,
        VF.Centro, 
        VF.MaterialPpal, 
        VF.VersionFabricacion, 
        VF.FechaVigencia, 
        VF.VersionPpal, 
        HR.Nivel, 
        HR.Material, 
        HR.Puesto, 
        HR.NumeroOp, 
        HR.ClaveModelo, 
        HR.ClaveControl, 
        HR.CantidadBase, 
        HR.UNMedida, 
        HR.HMaquina, 
        HR.NOperarios, 
        HR.TMaquina, 
        HR.TMOD,
        HR.NCavidades
FROM dbo.Dim_VersionesFabricacion AS VF INNER JOIN
        dbo.Dim_HojasRuta AS HR ON 
            VF.Centro = HR.Centro AND VF.IdVersion = HR.IdVersion