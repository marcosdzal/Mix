CREATE VIEW ORBELAN.Movimientos AS 
									SELECT * FROM dbo.SAPMovimientos
									WHERE Centro IN ('0150')