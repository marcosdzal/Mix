
CREATE VIEW [dbo].[Fact_PedidosClientes]
AS
  SELECT centro + '-' + material    AS CenMat_Id,
         centro + '-' + solicitante AS CenCli_Id,
         fechareparto               AS [Fecha Reparto],
         centro,
         docventas                  AS [Documento Ventas],
         tipodoc                    AS [Tipo Documento],
         cantidadpedida             AS [Cantidad Pedida],
         cantidadpendiente          AS [Cantidad Pendiente],
         unidadventa                AS [Unidad Venta],
         preciovta,
         importependiente           AS [Importe Pendiente]
  FROM   dbo.sapdemandaclientes
  /*WHERE  ( fechareparto >= (SELECT fecha
                            FROM   dbo.fechaconsulta) )*/