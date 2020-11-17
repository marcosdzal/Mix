CREATE VIEW AUTOFORJAS.CaptorGruposOEE AS 
									SELECT * FROM dbo.GruposOEECaptor
									WHERE Centro IN ('AUTOF')