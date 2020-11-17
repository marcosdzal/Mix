CREATE VIEW LTFORGE.FechasActualizacion AS 
									SELECT * FROM dbo.UpdateDates
									WHERE Centro IN ('0400')