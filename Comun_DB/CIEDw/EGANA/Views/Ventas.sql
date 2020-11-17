CREATE VIEW EGANA.Ventas AS 
									SELECT * FROM dbo.VentasClientes
									WHERE Centro IN ('0100')