CREATE VIEW EGANA.ComprasPedidosPendientes AS 
									SELECT * FROM dbo.SAPComprasPedidosPendientes
									WHERE Centro IN ('0100')