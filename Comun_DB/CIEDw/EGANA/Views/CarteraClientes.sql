CREATE VIEW EGANA.CarteraClientes AS 
									SELECT * FROM dbo.SAPDemandaClientes
									WHERE Centro IN ('0100')