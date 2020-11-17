CREATE VIEW NORMA.Movimientos AS 
									SELECT * FROM dbo.SAPMovimientos
									WHERE Centro IN ('0140')