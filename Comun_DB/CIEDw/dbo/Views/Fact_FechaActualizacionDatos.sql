CREATE VIEW [dbo].[Fact_FechaActualizacionDatos]
	AS 
	SELECT 
		Centro,
		Package as Paquete,
		LastUpdate as [Fecha Ultima Actualizacion],
		Descr as [Descripcion Paquete]
	FROM UpdateDates
	WHERE Centro != ''

UNION

SELECT 
		Planta as Centro,
		Package as Paquete,
		LastUpdate as [Fecha Ultima Actualizacion],
		Descr as [Descripcion Paquete]
	FROM UpdateDates CROSS JOIN Dim_Plantas
	WHERE Centro = ''