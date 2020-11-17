CREATE VIEW dbo.SAPMovimientos
AS
SELECT        dbo.SAPMovs.Centro, dbo.SAPMovs.Fecha, dbo.SAPMovs.Material, dbo.SAPMovs.Almacen, dbo.SAPMovs.DocMaterial, dbo.SAPMovs.DocMaterialPos, dbo.SAPMovs.TextoCabecera, dbo.SAPMovs.Lote, 
                         dbo.SAPMovs.Proveedor, dbo.SAPMovs.Cliente, dbo.SAPMovs.Cantidad * dbo.TiposMovimientos.Signo AS Cantidad, dbo.SAPMovs.UNMedida, 
                         dbo.SAPMovs.Importe * dbo.TiposMovimientos.Signo * dbo.TiposMovimientos.Valorar AS Importe, dbo.TiposMovimientos.ClaseMov, dbo.TiposMovimientos.ClaseDoc, dbo.TiposMovimientos.TipoStock, 
                         dbo.TiposMovimientos.TipoMov, dbo.TiposMovimientos.Valorar, dbo.TiposMovimientos.Signo, dbo.SAPMovs.DH, dbo.SAPDebeHaber.Factor, dbo.SAPMovs.CentroCoste, dbo.SAPMovs.OrdenEstadistica, 
                         dbo.SAPMovs.CuentaMayor, dbo.SAPMovs.TextoPosicion
FROM            dbo.SAPMovs LEFT OUTER JOIN
                         dbo.SAPDebeHaber ON dbo.SAPMovs.DH = dbo.SAPDebeHaber.DH LEFT OUTER JOIN
                         dbo.TiposMovimientos ON dbo.SAPMovs.Centro = dbo.TiposMovimientos.Centro AND dbo.SAPMovs.ClaseMov = dbo.TiposMovimientos.ClaseMov AND 
                         dbo.SAPMovs.ClaseDoc = dbo.TiposMovimientos.ClaseDoc AND dbo.SAPMovs.TipoStock = dbo.TiposMovimientos.TipoStock
