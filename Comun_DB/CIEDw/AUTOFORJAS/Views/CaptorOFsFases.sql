CREATE VIEW AUTOFORJAS.CaptorOFsFases AS 
									SELECT * FROM dbo.OFFasesCaptor
									WHERE Centro IN ('AUTOF')