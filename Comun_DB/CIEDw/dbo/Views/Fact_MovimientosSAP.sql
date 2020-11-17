/* Se realiza JOIN de las tablas SAPMovs TiposMovimientos para hacer el calculo de la cantidades y del importe, se trae el campo tipo moviemiento */
CREATE VIEW dbo.Fact_MovimientosSAP
AS
SELECT  SM.Centro + '-' + SM.Material AS CenMat_Id, SM.Centro + '-' + SM.Cliente AS CenCli_Id, 
        SM.Centro + '-' + SM.Proveedor AS CenPro_Id, 
        SM.Centro + '-' + '-' + SM.TipoStock + '-' + SM.ClaseMov + '-' + SM.ClaseDoc AS CenMov_Id, 
        SM.Centro + '-' + SM.OrdenEstadistica AS CenOrd_Id, 
        SM.Centro, 
        SM.Fecha, 
        SM.Almacen, 
        SM.DocMaterial AS [Documento Material], 
        SM.DocMaterialPos AS [Documento Material Pos], 
        SM.TextoCabecera AS [Texto Cabecera], 
        SM.Lote, 
        SM.TipoStock AS [Tipo Stock], 
        SM.NPedidoCliente AS [N Pedido Cliente], 
        SM.NPedidoClientePos AS [N Pedido Cliente Pos], 
        SM.RepartoPedido AS [Reparto Pedido], 
        SM.DH, 
        SM.Moneda, 
        SM.Cantidad AS [Cantidad Original], 
        SM.Cantidad  * TM.Valorar * DH.Factor AS Cantidad, 
        SM.Importe AS [Importe Original], 
        SM.Importe  * TM.Valorar * DH.Factor AS Importe, 
        SM.ImporteFactura * TM.Valorar * DH.Factor AS [Importe Factura],
        SM.UNMedida AS [Unidad Medida], 
        SM.CantUNPedido AS [Cant Unidad Pedido], 
        SM.UNPedido AS [Unidad Pedido], 
        SM.NPedidoCompras AS [N Pedido Compras], 
        SM.NPedidoComprasPos AS [N Pedido Compras Pos], 
        SM.DestMercancias AS [Dest Mercancias], 
        SM.PuestoDescarga AS [Puesto Descarga], 
        SM.Division, 
        SM.Sociedad, 
        SM.centro + '-' + SM.CentroCoste as CenCCos_Id,
        SM.CentroCoste AS [Centro Coste], 
        SM.Centro + '-' + SM.CuentaMayor as CenCta_Id,
        SM.CuentaMayor AS [Cuenta Mayor], SM.UP
FROM            dbo.SAPMovs AS SM INNER JOIN
                         dbo.SAPDebeHaber AS DH ON SM.DH = DH.DH LEFT OUTER JOIN
                             (SELECT DISTINCT Centro, ClaseMov, ClaseDoc, TipoStock, TipoMov, Valorar, Signo
                               FROM            dbo.TiposMovimientos) AS TM ON SM.Centro = TM.Centro AND SM.ClaseMov = TM.ClaseMov AND SM.ClaseDoc = TM.ClaseDoc AND SM.TipoStock = TM.TipoStock
WHERE        (SM.Fecha >=
                             (SELECT        Fecha
                               FROM            dbo.FechaConsulta))