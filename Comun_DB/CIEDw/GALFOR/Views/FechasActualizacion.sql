CREATE VIEW GALFOR.FechasActualizacion AS 
									SELECT * FROM dbo.UpdateDates
									WHERE Centro IN ('0110')