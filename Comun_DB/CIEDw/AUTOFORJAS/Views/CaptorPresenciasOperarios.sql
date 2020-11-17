CREATE VIEW AUTOFORJAS.CaptorPresenciasOperarios AS 
									SELECT * FROM dbo.PresenciaEnPuestoCaptor
									WHERE Centro IN ('AUTOF')