CREATE VIEW NORMA.SaldosCuentasMayor AS 
									SELECT * FROM dbo.SAPSaldosCuentasMayor
									WHERE Centro IN ('0140')