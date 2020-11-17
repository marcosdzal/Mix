CREATE VIEW [dbo].[Dim_Proyectos]
	AS SELECT 
	V.Centro + '-' + V.Proyecto as CenPry_id,
	V.Proyecto,
	V.Denominacion as [Denominacion Proyecto]
	FROM Dim_ProyectosSAP as V