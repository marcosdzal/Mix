CREATE VIEW LTFORGE.Clientes AS 
									SELECT * FROM dbo.SAPClientesGeneral
									WHERE Centro IN ('0400')