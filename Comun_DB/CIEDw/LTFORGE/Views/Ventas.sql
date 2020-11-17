CREATE VIEW LTFORGE.Ventas AS 
									SELECT * FROM dbo.VentasClientes
									WHERE Centro IN ('0400')