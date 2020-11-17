CREATE VIEW dbo.SAPRecepciones
AS
SELECT  RC.Centro, 
        RC.Material, 
        PP.TextoBreve, 
        PC.Proveedor, 
        RC.Pedido, 
        RC.PedidoPos, 
        RC.Albaran, 
        RC.AlbaranLinea, 
        RC.Fecha, 
        RC.AlbaranProveedor, 
        RC.FechaRegistro, 
        RC.Lote, 
        PP.GrupoArt, 
        PP.TipoStock,
        PP.TipoImputacion,
        RC.FechaAlbaran, 
        (RC.CantUNPedido * DH.Factor) AS CantidadEntrega, 
        (RC.Importe * DH.Factor) AS Importe, 
        RC.Usuario, 
        PP.TipoPosPed,
        RC.ClaseMov,
        PPI.CuentaMayor, 
        PPI.CentroCoste,
        PPI.OrdenEstadistica,
        PPI.Activo, 
        PPI.ActivoSub
FROM            dbo.SAPRecepcionesCompras AS RC
                         LEFT OUTER JOIN dbo.SAPPedidosPosCompras AS PP
                         ON PP.Pedido = RC.Pedido 
                            AND PP.PedidoPos = RC.PedidoPos 
                            AND PP.Centro = RC.Centro
                         LEFT OUTER JOIN dbo.SAPPedidosCompras as PC
                         ON PP.Pedido = PC.Pedido 
                            AND PP.Centro = PC.Centro
                         LEFT OUTER JOIN dbo.SAPPedidosImputacionCompras as PPI
                         ON PP.Centro = PPI.Centro 
                            AND PP.Pedido = PPI.Pedido 
                            AND PP.PedidoPos = PPI.PedidoPos
                         INNER JOIN dbo.SAPDebeHaber as DH
                            ON DH.DH = RC.DebeHaber