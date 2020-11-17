CREATE VIEW EGANA.Proveedores AS 
									SELECT * FROM dbo.SAPProveedores
									WHERE Centro IN ('0100')