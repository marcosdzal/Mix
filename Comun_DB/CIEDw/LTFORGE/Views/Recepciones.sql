CREATE VIEW LTFORGE.Recepciones AS 
									SELECT * FROM dbo.SAPRecepciones
									WHERE Centro IN ('0400')