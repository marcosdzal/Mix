CREATE VIEW [dbo].[Fact_FacturasProveedor]
	AS 
	SELECT DISTINCT
	FS.Centro as Centro,
	FS.Centro + '-' + FS.Proveedor as CenPro_Id,
	FS.Centro + '-' + FS.NDocContable + '-' + Cast(year(FS.Fecha) AS VARCHAR(10)) as CenFac_Id,
	
	FS.NDocumento as Documento,
	FS.NDocContable as Factura,
	FS.MonedaDoc as Moneda,
	FS.Moneda as MonedaLocal,
	ROUND(FS.ImporteBruto * C.CantidadDestino, 3) as [Importe Bruto Factura],
	round(FS.ImporteImpuesto * C.CantidadDestino, 3) as [Importe Impuesto Factura]
FROM Fact_FacturacionProveedoresSAP as FS  
left join CambioMoneda as C on FS.MonedaDoc = c.MonedaOrigen and FS.Moneda = c.MonedaDestino