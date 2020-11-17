
CREATE VIEW [dbo].[Dim_PedidosPosCompras]
AS
  SELECT PC.centro + '-' + PC.pedido         AS CenPed_Id,
         PC.centro + '-' + PC.pedido + '-' + Cast(PC.pedidopos AS VARCHAR(10)) AS CenPedPos_Id,
         PC.centro + '-' + PC.TipoPosPed       AS CenTPos_Id,
         PC.centro + '-' + PC.TipoImputacion   AS CenTImp_Id,
         PC.centro + '-' + IIF(IC.CentroCoste is null, '' , IC.CentroCoste)   AS CenCCos_Id,
         PC.centro + '-' + PC.Almacen       AS CenAlm_Id,
         PC.centro,
         PC.pedido,
         PC.pedidopos                        AS [Pedido Pos],
         PC.textobreve                       AS [Texto Breve],
         PC.sociedad,
         PC.almacen,
         PC.matproveedor                     AS [Material Proveedor],
         PC.tipodoccompra                    AS [Tipo Documento Compra],
         IC.centrocoste                      AS [Centro Coste Imputación],
         IC.cuentamayor                      AS [Cuenta Mayor Imputación],
         PC.tipoimputacion                   AS [Tipo Imputación],
         PC.docreferencia                    AS [Documento Referencia],
         PC.fechaprecio                      AS [Fecha Precio],
         PC.fechaultact                      AS [Fecha Última Actualización]
  FROM   dbo.sappedidosposcompras AS PC
         LEFT OUTER JOIN dbo.sappedidosimputacioncompras AS IC
                      ON PC.centro = IC.centro
                         AND PC.pedido = IC.pedido
                         AND PC.pedidopos = IC.pedidopos

UNION ALL
  SELECT P.Planta + '-'       AS CenPed_Id,
         P.Planta + '-' + '' + '-' + Cast(0 AS VARCHAR(10)) AS CenPedPos_Id,
         P.Planta + '-'     AS CenTPos_Id,
         P.Planta + '-'    AS CenTImp_Id,
         P.Planta + '-'    AS CenCCos_Id,
         P.Planta + '-'    AS CenAlm_Id,
         P.Planta as Centro,
         '' as pedido,
         0                        AS [Pedido Pos],
         'S/N'                       AS [Texto Breve],
         '' as sociedad,
         '' as almacen,
         ''                     AS [Material Proveedor],
         ''                    AS [Tipo Documento Compra],
         ''                      AS [Centro Coste Imputación],
         ''                      AS [Cuenta Mayor Imputación],
         ''                   AS [Tipo Imputación],
         ''                    AS [Documento Referencia],
         null                      AS [Fecha Precio],
         null                      AS [Fecha Última Actualización]
  FROM Dim_Plantas P