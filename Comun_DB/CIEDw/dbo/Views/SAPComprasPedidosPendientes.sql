CREATE VIEW dbo.SAPComprasPedidosPendientes
AS
SELECT        dbo.SAPPedidosCompras.Centro, dbo.SAPPedidosCompras.Pedido, dbo.SAPPedidosCompras.TipoDoc, dbo.SAPPedidosCompras.ClaseDoc, dbo.SAPPedidosCompras.Borrado, dbo.SAPPedidosCompras.Estado, 
                         dbo.SAPPedidosCompras.FechaCreacion, dbo.SAPPedidosCompras.Usuario, dbo.SAPPedidosCompras.Proveedor, dbo.SAPPedidosPosCompras.PedidoPos, dbo.SAPPedidosPosCompras.TipoPosPed, 
                         dbo.SAPPedidosPosCompras.TipoImputacion, dbo.SAPPedidosPosCompras.Borrado AS BorradoPos, dbo.SAPPedidosPosCompras.FechaUltMod, dbo.SAPPedidosPosCompras.TextoBreve, 
                         dbo.SAPPedidosPosCompras.Material, dbo.SAPPedidosPosCompras.Almacen, dbo.SAPPedidosPosCompras.GrupoArt, dbo.SAPPedidosPosCompras.CantPrevisa, dbo.SAPPedidosPosCompras.CantPedido, 
                         dbo.SAPPedidosPosCompras.UNPedido, dbo.SAPPedidosPosCompras.CentroBeneficio, dbo.SAPPedidosPosCompras.Solicitante, dbo.SAPPedidosPosCompras.FechaHorizonte, 
                         dbo.SAPRepartosPosCompras.FechaPedido, dbo.SAPRepartosPosCompras.FechaEstadistica, dbo.SAPRepartosPosCompras.Reparto, dbo.SAPRepartosPosCompras.FechaEntrega, 
                         dbo.SAPRepartosPosCompras.TipoFechaEntrega, dbo.SAPRepartosPosCompras.CantidadReparto, dbo.SAPRepartosPosCompras.CantidadEntrada, dbo.SAPRepartosPosCompras.RepartoFijado, 
                         dbo.SAPPedidosPosCompras.PrecioMonDoc, dbo.SAPPedidosPosCompras.CantBase, dbo.SAPRepartosPosCompras.CantidadReparto - dbo.SAPRepartosPosCompras.CantidadEntrada AS CantidadPendiente, 
                         dbo.SAPPedidosImputacionCompras.CuentaMayor, dbo.SAPPedidosImputacionCompras.CentroCoste, dbo.SAPPedidosImputacionCompras.Activo, dbo.SAPPedidosImputacionCompras.ActivoSub, 
                         dbo.SAPPedidosImputacionCompras.OrdenEstadistica
FROM            dbo.SAPPedidosPosCompras LEFT OUTER JOIN
                         dbo.SAPPedidosImputacionCompras ON dbo.SAPPedidosPosCompras.Pedido = dbo.SAPPedidosImputacionCompras.Pedido AND 
                         dbo.SAPPedidosPosCompras.PedidoPos = dbo.SAPPedidosImputacionCompras.PedidoPos AND dbo.SAPPedidosPosCompras.Centro = dbo.SAPPedidosImputacionCompras.Centro RIGHT OUTER JOIN
                         dbo.SAPRepartosPosCompras ON dbo.SAPPedidosPosCompras.Centro = dbo.SAPRepartosPosCompras.Centro AND dbo.SAPPedidosPosCompras.Pedido = dbo.SAPRepartosPosCompras.Pedido AND 
                         dbo.SAPPedidosPosCompras.PedidoPos = dbo.SAPRepartosPosCompras.PedidoPos LEFT OUTER JOIN
                         dbo.SAPPedidosCompras ON dbo.SAPPedidosPosCompras.Centro = dbo.SAPPedidosCompras.Centro AND dbo.SAPPedidosPosCompras.Pedido = dbo.SAPPedidosCompras.Pedido
WHERE        (dbo.SAPPedidosCompras.Borrado = 0) AND (dbo.SAPPedidosPosCompras.Borrado = 0) AND (dbo.SAPPedidosPosCompras.EntregaFinal = 0) AND 
                         (dbo.SAPRepartosPosCompras.CantidadReparto - dbo.SAPRepartosPosCompras.CantidadEntrada > 0)
