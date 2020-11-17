CREATE VIEW LEGAZPI.Ventas AS 
									SELECT * FROM dbo.VentasClientes
									WHERE Centro IN ('0130')