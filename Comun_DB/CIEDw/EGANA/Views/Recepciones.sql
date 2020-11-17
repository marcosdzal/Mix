CREATE VIEW EGANA.Recepciones AS 
									SELECT * FROM dbo.SAPRecepciones
									WHERE Centro IN ('0100')