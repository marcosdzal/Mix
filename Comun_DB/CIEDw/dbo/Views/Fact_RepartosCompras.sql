
CREATE VIEW [dbo].[Fact_RepartosCompras]
AS
  SELECT RC.centro + '-' + PPC.material         AS CenMat_Id,
         RC.centro + '-' + PC.proveedor         AS CenPro_Id,
         RC.centro + '-' + PIC.ordenestadistica AS CenOrd_Id,
         RC.centro + '-' + RC.pedido            AS CenPed_Id,
         RC.centro + '-' + RC.pedido + '-'
         + Cast(RC.pedidopos AS VARCHAR(10))    AS CenPedPos_Id,
         RC.centro,
         RC.fechaentrega                        AS [Fecha Entrega],
         RC.reparto,
         RC.tipofechaentrega                    AS [Tipo Fecha Entrega],
         RC.cantidadreparto                     AS [Cant Reparto],
         RC.cantidadanterior                    AS [Cant Anterior],
         RC.cantidadentrada                     AS [Cant Entrada],
         RC.cantidadsalida                      AS [Cant Salida],
         RC.cantproctraslado                    AS [Cant Proc Traslado],
         RC.cantreducmrp                        AS [Cant Reduc MRP],
         RC.cantconfirmada                      AS [Cant Confirmada],
         IIF(RC.CantidadReparto - RC.CantidadEntrada > 0, RC.CantidadReparto - RC.CantidadEntrada, 0) as [Cant Pendiente],
         IIF(RC.CantidadReparto - RC.CantidadEntrada > 0, RC.CantidadReparto - RC.CantidadEntrada, 0) * PPC.PrecioMonDoc * CM.CantidadDestino as [Importe Pendiente]
  FROM   dbo.saprepartosposcompras AS RC
         LEFT OUTER JOIN dbo.sappedidosimputacioncompras AS PIC
                      ON RC.pedido = PIC.pedido
                         AND RC.pedidopos = PIC.pedidopos
                         AND RC.centro = PIC.centro
         LEFT OUTER JOIN dbo.sappedidoscompras AS PC
                      ON RC.pedido = PC.pedido
                         AND RC.centro = PC.centro
         LEFT OUTER JOIN dbo.sappedidosposcompras AS PPC
                      ON RC.pedido = PPC.pedido
                         AND RC.pedidopos = PPC.pedidopos
                         AND RC.centro = PPC.centro
         LEFT OUTER JOIN dbo.SAPPlants AS SP
                      ON PC.Centro = SP.Plant
         LEFT OUTER JOIN dbo.CambioMoneda as CM
                      ON PC.moneda = CM.MonedaOrigen
                         AND SP.Currency = CM.MonedaDestino
  WHERE  ( RC.fechaentrega >= (SELECT fecha
                               FROM   dbo.fechaconsulta) )