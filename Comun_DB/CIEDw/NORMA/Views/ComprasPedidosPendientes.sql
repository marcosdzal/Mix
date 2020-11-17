CREATE VIEW NORMA.ComprasPedidosPendientes AS 
									SELECT * FROM dbo.SAPComprasPedidosPendientes
									WHERE Centro IN ('0140')