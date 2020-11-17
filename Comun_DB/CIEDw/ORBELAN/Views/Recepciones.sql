CREATE VIEW ORBELAN.Recepciones AS 
									SELECT * FROM dbo.SAPRecepciones
									WHERE Centro IN ('0150')