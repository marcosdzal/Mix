CREATE VIEW [dbo].[Dim_Destinatarios]
	AS
  SELECT centro + '-' + cliente AS CenDes_Id,
         centro,
         cliente                AS [Cliente Código],
         nombre1                AS [Cliente Nombre],
         nombre2                AS [Cliente Nombre2],
         poblacion              AS Población,
         codigopostal           AS [Código Postal],
         region                 AS Región,
         calle,
         telefono               AS Teléfono,
         grupoctasdeudor        AS [Grupo Ctas Deudor],
         vat,
         pais                   AS País
  FROM   dbo.sapclientesgeneral
UNION
 SELECT
       P.planta + '-'  AS CenDes_Id,
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
       ''                   AS País
 FROM Dim_Plantas P