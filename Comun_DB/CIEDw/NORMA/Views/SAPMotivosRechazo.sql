CREATE VIEW NORMA.SAPMotivosRechazo AS 
									SELECT Centro, Calidad as Rechazo, NombreCalidad as DescripcionRechazo FROM dbo.Dim_TiposCalidadesSAP
									WHERE Centro IN ('0140')