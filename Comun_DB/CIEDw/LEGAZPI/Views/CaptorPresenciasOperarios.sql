CREATE VIEW LEGAZPI.CaptorPresenciasOperarios AS 
									SELECT * FROM dbo.PresenciaEnPuestoCaptor
									WHERE Centro IN ('0130')