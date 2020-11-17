CREATE VIEW AUTOFORJAS.CaptorToleranciasAutocontroles AS 
									SELECT * FROM dbo.ToleranciasAutocontrolesCaptor
									WHERE Centro IN ('AUTOF')