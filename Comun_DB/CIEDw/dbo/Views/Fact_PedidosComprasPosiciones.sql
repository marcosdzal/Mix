
CREATE VIEW [dbo].[Fact_PedidosComprasPosiciones]
AS
  SELECT PP.centro + '-' + PP.material         AS CenMat_Id,
         PP.centro + '-' + IC.ordenestadistica AS CenOrd_ID,
         PP.centro + '-' + PP.pedido + '-' + Cast(PP.pedidopos AS VARCHAR(10))   AS CenPedPos_Id,
         PP.centro + '-' + PC.proveedor        AS CenPro_Id,
         PP.centro + '-' + PP.pedido           AS CenPed_Id,
         PC.centro + '-' + IIF(IC.CentroCoste is null, '' , IC.CentroCoste)   AS CenCCos_Id,
         PP.centro,
         PC.fechacreacion                      AS [Fecha Creación],
         PP.cantpedido                         AS [Cant Pedido],
         PP.unpedido                           AS [Unidad Pedido],
         PP.preciomondoc                       AS [Precio Mon Documento],
         PP.unprecio                           AS [Unidad Precio],
         PP.cantbase                           AS [Cantidad Base],
         PP.valornetomondoc                    AS [Valor Neto Mon Documento],
         PP.valorbrutomondoc                   AS [Valor Bruto Mon Documento],
         PP.rappel1                            AS Rappel,
         PP.GrupoArt
  FROM   dbo.sappedidosposcompras AS PP
         LEFT OUTER JOIN dbo.sappedidoscompras AS PC
                      ON PP.Centro = PP.Centro 
                        AND PP.pedido = PC.pedido
         LEFT OUTER JOIN dbo.sappedidosimputacioncompras AS IC
                      ON IC.centro = PP.centro
                         AND IC.pedidopos = PP.pedidopos
                         AND IC.pedido = PP.pedido
  /*WHERE  ( PC.fechacreacion >= (SELECT fecha
                                FROM   dbo.fechaconsulta) )*/