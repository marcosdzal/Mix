CREATE VIEW ORBELAN.Ventas AS 
									SELECT * FROM dbo.VentasClientes
									WHERE Centro IN ('0150')