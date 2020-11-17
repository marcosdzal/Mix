CREATE VIEW AUTOFORJAS.CaptorProducciones AS 
									SELECT * FROM dbo.ProduccionCaptor
									WHERE Centro IN ('AUTOF')