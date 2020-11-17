CREATE VIEW [dbo].[Dim_Familias] AS
	SELECT GrupoArt,
	    [SubFam1],
        [Cod1],
        [SubFam2],
        [Cod2],
        [SubFam3],
        [Cod3],
        [SubFam4],
        [Cod4],
        [SubFam5],
        [Cod5]    
FROM FamiliasCompras

UNION

    SELECT DISTINCT GrupoArt as GrupoArt,
        '' as [SubFam1],
        '' as [Cod1],
        '' as [SubFam2],
        '' as [Cod2],
        '' as [SubFam3],
        '' as [Cod3],
        '' as [SubFam4],
        '' as [Cod4],
        '' as [SubFam5],
        '' as [Cod5]
    FROM AllMaterialsData
    WHERE NOT EXISTS(SELECT 1 from FamiliasCompras 
                 WHERE AllMaterialsData.GrupoArt = FamiliasCompras.GrupoArt 
                 )
UNION

     SELECT DISTINCT '' as GrupoArt,
        '' as [SubFam1],
        '' as [Cod1],
        '' as [SubFam2],
        '' as [Cod2],
        '' as [SubFam3],
        '' as [Cod3],
        '' as [SubFam4],
        '' as [Cod4],
        '' as [SubFam5],
        '' as [Cod5]