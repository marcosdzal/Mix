CREATE VIEW AUTOFORJAS.CaptorEstadosPuestos AS 
									SELECT * FROM dbo.EstadosPuestoCaptor
									WHERE Centro IN ('AUTOF')