CREATE VIEW dbo.Dim_Materiales
AS
/*Unión de los materiales de SAP y Captor*/
SELECT 
        C.centro + '-' + C.material AS CenMat_Id,
        C.Centro + '-' + '' as CenBen_Id,
        C.Centro + '-' + '' as CenPry_id,
        C.centro AS Centro, 
        C.material AS Material, 
        '' AS [Tipo Material], 
        CASE WHEN C.descrarticulo IS NULL 
                     THEN C.articulo ELSE C.descrarticulo END AS [Descripción Material], 
        '' AS Referencia, 
        C.articulo AS Artículo, 
        '' AS [Centro Beneficio], 
        0 AS [Precio Vta], 
        '' AS [Unidad Medida], 
        0 AS [Peso Bruto], 
        0 AS [Peso Neto], 
        0 AS [Peso Consumo], 
        0 AS [Precio Coste], 
        0 AS [Coste Std], 
        0 AS [Base Coste],
        '' as [Categoria Valoracion],
        '' AS [Material Str], 
        '' AS [Grupo Art], 
        'Sin familia' AS SubFamilia1, 
        'Sin Familia' AS SubFamilia2, 
        'Sin familia' AS SubFamilia3, 
        'Sin familia' AS SubFamilia4, 
        'Sin familia' AS SubFamilia5, 
        '' AS Proyecto
FROM dbo.referenciascaptor C LEFT JOIN
        dbo.allmaterialsdata M ON C.material = M.material AND C.centro = M.centro
WHERE M.material IS NULL

UNION

SELECT 
        M.centro + '-' + M.material AS CenMat_Id,
        M.Centro + '-' + M.CentroBeneficio as CenBen_Id,
        M.Centro + '-' + M.Proyecto as CenPry_id,
        M.centro AS Centro, 
        M.material AS Material, 
        M.tipomaterial AS [Tipo Material], 
        M.descrmaterial AS [Descripción Material], 
        M.referencia AS Referencia, 
        M.articulo AS Artículo, 
        M.centrobeneficio AS [Centro Beneficio], 
        M.precioventa AS [Precio Vta], 
        M.unidadmedida AS [Unidad Medida], 
        M.pesobruto AS [Peso Bruto], 
        M.pesoneto AS [Peso Neto], 
        M.pesoconsumo AS [Peso Consumo], 
        M.preciocoste AS [Precio Coste], 
        M.costestd AS [Coste Std], 
        M.basecoste AS [Base Coste],
        M.CategoriaValoracion as [Categoria Valoracion],
        M.materialstr AS [Material Str], 
        M.grupoart AS [Grupo Art], 
        CASE WHEN F.subfam1 IS NULL OR
            F.subfam1 = '' THEN 'Sin familia' ELSE F.subfam1 END AS [SubFamilia1], 
        CASE WHEN F.subfam2 IS NULL OR
            F.SubFam2 = '' THEN 'Sin familia' ELSE F.SubFam2 END AS [SubFamilia2], 
        CASE WHEN F.subfam3 IS NULL OR
            F.SubFam3 = '' THEN 'Sin familia' ELSE F.SubFam3 END AS [SubFamilia3], 
        CASE WHEN F.subfam4 IS NULL OR
            F.SubFam4 = '' THEN 'Sin familia' ELSE F.SubFam4 END AS [SubFamilia4], 
        CASE WHEN F.subfam5 IS NULL OR
            F.SubFam5 = '' THEN 'Sin familia' ELSE F.SubFam5 END AS [SubFamilia5], 
        Proyecto
FROM dbo.allmaterialsdata AS M LEFT OUTER JOIN
        dbo.familiascompras AS F ON M.grupoart = F.grupoart

UNION

SELECT 
        P.Planta + '-' + '0' AS CenMat_Id,
        P.Planta + '-' + '' as CenBen_Id,
        P.Planta + '-' + '' as CenPry_id,
        P.Planta AS Centro, 
        '0' AS Material, 
        '' AS [Tipo Material], 
        'SIN REFERENCIA' AS [Descripción Material], 
        '' AS Referencia, 
        'SIN REFERENCIA' AS Artículo, 
        '' AS [Centro Beneficio], 
        0 AS [Precio Vta], 
        '' AS [Unidad Medida], 
        0 AS [Peso Bruto], 
        0 AS [Peso Neto], 
        0 AS [Peso Consumo], 
        0 AS [Precio Coste], 
        0 AS [Coste Std], 
        0 AS [Base Coste],
        '' as [Categoria Valoracion],
        '' AS [Material Str], 
        '' AS [Grupo Art], 
        'Sin familia' AS SubFamilia1, 
        'Sin Familia' AS SubFamilia2, 
        'Sin familia' AS SubFamilia3, 
        'Sin familia' AS SubFamilia4, 
        'Sin familia' AS SubFamilia5, 
        '' AS Proyecto
FROM Dim_Plantas P

UNION

SELECT 
        P.Planta + '-' + '' AS CenMat_Id,
        P.Planta + '-' + '' as CenBen_Id,
        P.Planta + '-' + '' as CenPry_id,
        P.Planta AS Centro, 
        '' AS Material, 
        '' AS [Tipo Material], 
        'SIN REFERENCIA' AS [Descripción Material], 
        '' AS Referencia, 
        'SIN REFERENCIA' AS Artículo, 
        '' AS [Centro Beneficio], 
        0 AS [Precio Vta], 
        '' AS [Unidad Medida], 
        0 AS [Peso Bruto], 
        0 AS [Peso Neto], 
        0 AS [Peso Consumo], 
        0 AS [Precio Coste], 
        0 AS [Coste Std], 
        0 AS [Base Coste],
        '' as [Categoria Valoracion],
        '' AS [Material Str], 
        '' AS [Grupo Art], 
        'Sin familia' AS SubFamilia1, 
        'Sin Familia' AS SubFamilia2, 
        'Sin familia' AS SubFamilia3, 
        'Sin familia' AS SubFamilia4, 
        'Sin familia' AS SubFamilia5, 
        '' AS Proyecto
FROM Dim_Plantas P