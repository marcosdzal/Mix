CREATE VIEW AUTOFORJAS.CaptorReferencias AS 
									SELECT * FROM dbo.ReferenciasCaptor
									WHERE Centro IN ('AUTOF')