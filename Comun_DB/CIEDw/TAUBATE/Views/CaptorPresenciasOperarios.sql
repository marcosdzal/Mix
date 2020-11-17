CREATE VIEW TAUBATE.CaptorPresenciasOperarios AS 
									SELECT * FROM dbo.PresenciaEnPuestoCaptor
									WHERE Centro IN ('AUTTBT')