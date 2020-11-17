CREATE VIEW EGANA.CuentasContables AS 
									SELECT * FROM dbo.CuentasContables
									WHERE PlanContable IN ('PESP')