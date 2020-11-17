CREATE VIEW [dbo].[Dim_CambioMoneda]
	AS SELECT  [MonedaOrigen] + '-' + [MonedaDestino] as Cur_Id,
		[MonedaOrigen],
        [MonedaDestino],
        [CantidadDestino]  
   FROM CambioMoneda