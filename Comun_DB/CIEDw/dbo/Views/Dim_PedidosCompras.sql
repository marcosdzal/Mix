CREATE VIEW dbo.Dim_PedidosCompras
AS
SELECT        Centro + '-' + Pedido AS CenPed_Id, Pedido, Centro, Sociedad, TipoDoc AS [Tipo Documento], ClaseDoc AS [Clase Documento], Estado, FechaCreacion AS [Fecha Creación], 
                         FechaCabEntrega AS [Fecha Cab Entrega], CondPago AS [Condición Pago], Vendedor, EmisorFactura AS [Emisor Factura], DatosComExt AS [Datos Comext], NuestraReferencia AS [Nuestra Referencia], 
                         NIFPropio AS [NIF Propio]
FROM            dbo.SAPPedidosCompras
