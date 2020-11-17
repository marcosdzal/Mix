CREATE VIEW AUTOFORJAS.CaptorPuestos AS 
									SELECT * FROM dbo.PuestosCaptor
									WHERE Centro IN ('AUTOF')