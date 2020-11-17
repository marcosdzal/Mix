CREATE VIEW NORMA.Recepciones AS 
									SELECT * FROM dbo.SAPRecepciones
									WHERE Centro IN ('0140')