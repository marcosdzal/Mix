CREATE VIEW GALFOR.CarteraClientes AS 
									SELECT * FROM dbo.SAPDemandaClientes
									WHERE Centro IN ('0110')