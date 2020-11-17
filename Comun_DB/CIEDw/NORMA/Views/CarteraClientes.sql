CREATE VIEW NORMA.CarteraClientes AS 
									SELECT * FROM dbo.SAPDemandaClientes
									WHERE Centro IN ('0140')