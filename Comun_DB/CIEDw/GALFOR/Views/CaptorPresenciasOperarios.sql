CREATE VIEW GALFOR.CaptorPresenciasOperarios AS 
									SELECT * FROM dbo.PresenciaEnPuestoCaptor
									WHERE Centro IN ('0110')