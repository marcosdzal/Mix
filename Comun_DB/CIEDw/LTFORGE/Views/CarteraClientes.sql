CREATE VIEW LTFORGE.CarteraClientes AS 
									SELECT * FROM dbo.SAPDemandaClientes
									WHERE Centro IN ('0400')