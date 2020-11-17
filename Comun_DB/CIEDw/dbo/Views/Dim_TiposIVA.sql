CREATE VIEW [dbo].[Dim_TiposIVA]
	AS SELECT DISTINCT
		TI.Centro + '-' + TI.IndicadorIVA as CenIva_Id,
		TI.DenominacionIVA as DenominacionIva
	FROM Dim_TiposIVASAP as TI