CREATE VIEW LTFORGE.Movimientos AS 
									SELECT * FROM dbo.SAPMovimientos
									WHERE Centro IN ('0400')