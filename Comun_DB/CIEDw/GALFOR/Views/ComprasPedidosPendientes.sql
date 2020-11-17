CREATE VIEW GALFOR.ComprasPedidosPendientes AS 
									SELECT * FROM dbo.SAPComprasPedidosPendientes
									WHERE Centro IN ('0110')