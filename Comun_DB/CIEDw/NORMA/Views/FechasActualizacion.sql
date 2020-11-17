CREATE VIEW NORMA.FechasActualizacion AS 
									SELECT * FROM dbo.UpdateDates
									WHERE Centro IN ('0140')