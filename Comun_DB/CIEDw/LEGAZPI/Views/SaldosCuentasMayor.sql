CREATE VIEW LEGAZPI.SaldosCuentasMayor AS 
									SELECT * FROM dbo.SAPSaldosCuentasMayor
									WHERE Centro IN ('0130')