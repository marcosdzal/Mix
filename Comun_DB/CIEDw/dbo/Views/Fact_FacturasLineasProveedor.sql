CREATE VIEW [dbo].[Fact_FacturasLineasProveedor]
	AS 
	SELECT 
	FS.Centro as Centro,
	FS.Centro + '-' + FS.Proveedor as CenPro_Id,
	FS.centro + '-' + FS.pedido         AS CenPed_Id,
	FS.centro + '-' + FS.pedido + '-' + Cast(FS.pedidopos AS VARCHAR(10)) AS CenPedPos_Id,
	FS.Centro + '-' + FS.Material as CenMat_Id,
	FS.Centro + '-' + FS.IndicadorIVA as CenIva_Id,
	FS.Centro + '-' + FS.NDocContable + '-' + Cast(year(FS.Fecha) AS VARCHAR(10)) as CenFac_Id,
	FS.NDocContable as Factura,
	FS.PosDocContable as FacturaPos,
	FS.NDocumento as Documento,
	FS.TextoPosicion AS TextoFactura,
	Fs.Fecha,
	FS.Cantidad as [Cantidad Factura],
	FS.ImporteMonedaLocal as [Importe Neto Factura]
FROM Fact_FacturacionProveedoresSAP as FS
WHERE  ( FS.fecha >= (SELECT fecha
                        FROM   dbo.fechaconsulta) )