CREATE VIEW GALFOR.Plantas AS 
									SELECT *, Plant AS Centro FROM dbo.SAPPlants
									WHERE Plant IN ('0110')