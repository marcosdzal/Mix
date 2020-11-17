

CREATE VIEW [dbo].[Dim_Proveedores]
AS
  SELECT centro + '-' + proveedor AS CenPro_Id,
         centro,
         proveedor                AS [Código Proveedor],
         nombre1                  AS [Nombre Proveedor],
         nombre2                  AS [Nombre2 Proveedor],
         calle,
         edificio,
         poblacion                AS Población,
         codigopostal             AS [Código Postal],
         telefono                 AS Teléfono,
         email,
         nif,
         familiaprov1             AS [Familia Proveedor],
         familiaprov2             AS [Familia Proveedor1],
         descrformapago           AS [Descripción Forma Pago],
         sociedad,
         pais                     AS País,
         grupoctas                AS [Grupo Ctas],
         P.CodAlfa2               AS PaisISO2,
         P.CodAlfa3               AS PaisISO3,
         P.CodNum                 AS PaisISONum,
         P.NombrePais             AS PaisNombre
  FROM   dbo.sapproveedores left join Dim_Pais as P on Pais = P.CodAlfa2

UNION

  SELECT
       P.planta + '-'   AS CenPro_Id,
       P.planta         AS Centro,
       'Desconocido'    AS [Código Proveedor],
       'Desconocido'    AS [Nombre Proveedor],
       'Desconocido'    AS [Nombre2 Proveedor],
       ''               AS [Calle],
       ''               AS [edificio],
        ''              AS Población,
        ''              AS [Código Postal],
        ''              AS Teléfono,
        ''              AS [email],
        ''              AS [nif],
        ''              AS [Familia Proveedor],
        ''              AS [Familia Proveedor1],
        ''              AS [Descripción Forma Pago],
        ''              AS [sociedad],
        ''              AS País,
        ''              AS [Grupo Ctas],
        ''              AS PaisISO2,
        ''              AS PaisISO3,
        ''              AS PaisISONum,
        ''              AS PaisNombre
  FROM Dim_Plantas P