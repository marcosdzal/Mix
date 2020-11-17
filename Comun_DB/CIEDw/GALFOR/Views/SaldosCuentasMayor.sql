CREATE VIEW GALFOR.SaldosCuentasMayor AS 
									SELECT * FROM dbo.SAPSaldosCuentasMayor
									WHERE Centro IN ('0110')