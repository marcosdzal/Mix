CREATE VIEW dbo.SAPRecepcionesSinMaterial
AS
SELECT        dbo.SAPRecepcionesCompras.Pedido, dbo.SAPRecepcionesCompras.PedidoPos, dbo.SAPRecepcionesCompras.Mes, dbo.SAPRecepcionesCompras.Ano, dbo.SAPRecepcionesCompras.Albaran, 
                         dbo.SAPRecepcionesCompras.AlbaranLinea, dbo.SAPRecepcionesCompras.TipoHistPedido, dbo.SAPRecepcionesCompras.ClaseMov, dbo.SAPRecepcionesCompras.Fecha, 
                         dbo.SAPRecepcionesCompras.CantidadPedido, dbo.SAPRecepcionesCompras.CantUNPedido, dbo.SAPRecepcionesCompras.Importe * dbo.SAPDebeHaber.Factor AS Importe, 
                         dbo.SAPRecepcionesCompras.ImporteMonDoc, dbo.SAPRecepcionesCompras.Moneda, dbo.SAPRecepcionesCompras.ValorCompensa, dbo.SAPRecepcionesCompras.DebeHaber, 
                         dbo.SAPRecepcionesCompras.ClaseValoracion, dbo.SAPRecepcionesCompras.EntregaFinal, dbo.SAPRecepcionesCompras.AlbaranProveedor, dbo.SAPRecepcionesCompras.AnoDocRef, 
                         dbo.SAPRecepcionesCompras.AlbaranRef, dbo.SAPRecepcionesCompras.AlbaranLineaRef, dbo.SAPRecepcionesCompras.TipoMov, dbo.SAPRecepcionesCompras.FechaRegistro, 
                         dbo.SAPRecepcionesCompras.ValorFactura, dbo.SAPRecepcionesCompras.CumplimientoNorma, dbo.SAPRecepcionesCompras.Material, dbo.SAPRecepcionesCompras.Centro, 
                         dbo.SAPRecepcionesCompras.NCondDoc, dbo.SAPRecepcionesCompras.IndIva, dbo.SAPRecepcionesCompras.MonedaLocal, dbo.SAPRecepcionesCompras.CantidadEntrega, dbo.SAPRecepcionesCompras.Lote, 
                         dbo.SAPRecepcionesCompras.FechaAlbaran, dbo.SAPRecepcionesCompras.Usuario, dbo.SAPRecepcionesCompras.IndDevolucion
FROM            dbo.SAPRecepcionesCompras LEFT OUTER JOIN
                         dbo.SAPDebeHaber ON dbo.SAPRecepcionesCompras.DebeHaber = dbo.SAPDebeHaber.DH
WHERE        (dbo.SAPRecepcionesCompras.Material = '')