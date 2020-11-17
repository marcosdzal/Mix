CREATE VIEW NORMA.Clientes AS 
									SELECT * FROM dbo.SAPClientesGeneral
									WHERE Centro IN ('0140')