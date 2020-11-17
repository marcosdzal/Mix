CREATE VIEW EGANA.Movimientos AS 
									SELECT * FROM dbo.SAPMovimientos
									WHERE Centro IN ('0100')