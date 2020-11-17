CREATE VIEW AUTOFORJAS.CaptorTurnos AS 
									SELECT * FROM dbo.TurnosCaptor
									WHERE Centro IN ('AUTOF')