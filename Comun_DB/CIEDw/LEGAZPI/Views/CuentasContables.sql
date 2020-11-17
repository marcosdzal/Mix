CREATE VIEW LEGAZPI.CuentasContables AS 
									SELECT dbo.CuentasContables.* FROM dbo.CuentasContables 
									RIGHT OUTER JOIN
										dbo.SAPPlants ON dbo.CuentasContables.PlanContable = dbo.SAPPlants.ChartAccounts