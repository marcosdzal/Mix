CREATE VIEW GALFOR.Ventas AS 
									SELECT * FROM dbo.VentasClientes
									WHERE Centro IN ('0110')