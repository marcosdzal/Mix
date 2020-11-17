CREATE VIEW [dbo].[Dim_Clientes]
AS
  SELECT C.centro + '-' +  C.cliente AS CenCli_Id,
         C.centro,
         C.cliente                AS [Cliente Código],
         C.nombre1                AS [Cliente Nombre],
         C.nombre2                AS [Cliente Nombre2],
         C.poblacion              AS Población,
         C.codigopostal           AS [Código Postal],
         C.region                 AS Región,
         C.calle,
         C.telefono               AS Teléfono,
         C.grupoctasdeudor        AS [Grupo Ctas Deudor],
         C.vat,
         C.pais                   AS País,
         P.CodAlfa2               AS PaisISO2,
         P.CodAlfa3               AS PaisISO3,
         P.CodNum                 AS PaisISONum,
         P.NombrePais             AS PaisNombre
  FROM   dbo.sapclientesgeneral as C left join Dim_Pais as P on C.Pais = P.CodAlfa2
UNION
 SELECT
       P.planta + '-'  AS CenCli_Id,
       P.planta as Centro,
       'Desconocido' AS [Cliente Código],
       'Desconocido'                AS [Cliente Nombre],
       'Desconocido'                AS [Cliente Nombre2],
       ''              AS Población,
       ''           AS [Código Postal],
       ''                 AS Región,
       '' AS Calle,
       ''               AS Teléfono,
       ''        AS [Grupo Ctas Deudor],
       '' as vat,
       ''                   AS País,
       ''                   AS PaisISO2,
       ''                   AS PaisISO3,
       ''                   AS PaisISONum,
       ''                   AS PaisNombre
 FROM Dim_Plantas P