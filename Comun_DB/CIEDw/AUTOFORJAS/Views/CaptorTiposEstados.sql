CREATE VIEW AUTOFORJAS.CaptorTiposEstados AS 
									SELECT * FROM dbo.TiposEstadosCaptor
									WHERE Centro IN ('AUTOF')