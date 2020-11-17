CREATE VIEW GALFOR.Movimientos AS 
									SELECT * FROM dbo.SAPMovimientos
									WHERE Centro IN ('0110')