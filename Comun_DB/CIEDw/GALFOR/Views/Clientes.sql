CREATE VIEW GALFOR.Clientes AS 
									SELECT * FROM dbo.SAPClientesGeneral
									WHERE Centro IN ('0110')