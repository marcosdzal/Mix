CREATE VIEW [dbo].[Dim_CuentasContables]
	AS 
  SELECT
		C.Centro + '-' + C.PlanContable AS CenPlan_Id,
		C.Centro + '-' + C.Cuenta AS CenCta_Id,
		C.PlanContable + '-' + c.Cuenta AS PlanCta_Id,
		C.Centro,
		C.PlanContable,
		c.Cuenta,
		C.TextoBreveCuenta,
		C.TextoDescrCuenta,
		C.CuentaBalance,
		C.GrupoCuenta,
		C.MatchCode
	FROM Dim_CuentasContablesSAP as C