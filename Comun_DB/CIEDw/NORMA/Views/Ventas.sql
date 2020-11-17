CREATE VIEW NORMA.Ventas AS 
									SELECT * FROM dbo.VentasClientes
									WHERE Centro IN ('0140')