CREATE VIEW GALFOR.CuentasContables AS 
									SELECT dbo.CuentasContables.* FROM dbo.CuentasContables 
									RIGHT OUTER JOIN
										dbo.SAPPlants ON dbo.CuentasContables.PlanContable = dbo.SAPPlants.ChartAccounts