CREATE VIEW LTFORGE.Proveedores AS 
									SELECT * FROM dbo.SAPProveedores
									WHERE Centro IN ('0400')