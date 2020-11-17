CREATE VIEW AUTOFORJAS.CaptorTiempos AS 
									SELECT * FROM dbo.TiemposCaptor
									WHERE Centro IN ('AUTOF')