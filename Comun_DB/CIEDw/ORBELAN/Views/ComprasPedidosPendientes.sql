CREATE VIEW ORBELAN.ComprasPedidosPendientes AS 
									SELECT * FROM dbo.SAPComprasPedidosPendientes
									WHERE Centro IN ('0150')