CREATE VIEW [dbo].[Dim_Almacenes]
	AS SELECT 
		Centro + '-' + Almacen as CenAlm_Id,
		Centro,
		Almacen,
		DescrAlmacen as [Nombre Almacen]
	FROM Dim_AlmacenesSAP

	UNION

	SELECT Planta + '-' as CenAlm_Id,
		Planta as Centro,
		'' as Almacen,
		'' as [Nombre Almacen]
	FROM Dim_Plantas