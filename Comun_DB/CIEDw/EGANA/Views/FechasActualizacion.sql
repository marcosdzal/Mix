CREATE VIEW EGANA.FechasActualizacion AS 
									SELECT * FROM dbo.UpdateDates
									WHERE Centro IN ('0100')