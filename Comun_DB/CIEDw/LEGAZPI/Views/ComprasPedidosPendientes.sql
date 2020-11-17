CREATE VIEW LEGAZPI.ComprasPedidosPendientes AS 
									SELECT * FROM dbo.SAPComprasPedidosPendientes
									WHERE Centro IN ('0130')