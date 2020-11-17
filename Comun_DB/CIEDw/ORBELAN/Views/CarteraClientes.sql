CREATE VIEW ORBELAN.CarteraClientes AS 
									SELECT * FROM dbo.SAPDemandaClientes
									WHERE Centro IN ('0150')