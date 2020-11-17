CREATE VIEW NORMA.SAPRechazos AS 
									SELECT * FROM dbo.RechazosSAP
									WHERE Centro IN ('0140')