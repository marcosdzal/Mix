CREATE VIEW GALFOR.Proveedores AS 
									SELECT * FROM dbo.SAPProveedores
									WHERE Centro IN ('0110')