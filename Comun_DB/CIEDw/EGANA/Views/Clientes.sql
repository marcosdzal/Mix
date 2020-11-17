CREATE VIEW EGANA.Clientes AS 
									SELECT * FROM dbo.SAPClientesGeneral
									WHERE Centro IN ('0100')