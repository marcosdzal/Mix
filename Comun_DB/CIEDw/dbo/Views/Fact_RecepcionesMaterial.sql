
CREATE VIEW [dbo].[Fact_RecepcionesMaterial]
AS
  SELECT RM.centro + '-' + RM.material    AS CenMat_Id,
         RM.centro + '-' + RM.proveedor   AS CenPro_Id,
         RM.centro + '-' + RM.pedido + '-' + Cast(pedidopos AS VARCHAR(10)) AS CenPedPos_Id,
         RM.centro + '-' + RM.pedido      AS CenPed_Id,
         RM.centro + '-' + RM.TipoImputacion    AS CenTImp_Id,
         RM.centro + '-' + RM.TipoPosPed    AS CenTPos_Id,
         RM.centro + '-' + RM.Activo as CenAct_Id,
         RM.centro + '-' + RM.ActivoSub as CenActSub_Id,
         RM.centro + '-' + RM.CuentaMayor as CenCta_Id,
         RM.centro + '-' + RM.CentroCoste as CenCCos_Id,
         RM.centro + '-' + RM.OrdenEstadistica as CenOrd_Id,
         RM.centro                        AS Centro,
         RM.albaran                       AS Albarán,
         RM.albaranlinea                  AS [Albarán Línea],
         RM.albaranproveedor              AS [Proveedor Albarán],
         RM.fecha                         AS Fecha,
         RM.cantidadentrega               AS [Cant Entrega],
         RM.importe                       AS Importe,
         RM.lote                          AS Lote,
         IIF(RM.Material = '',  'Sin Material', 'Con Material') AS [Tipo Recepción],
         RM.TextoBreve,
         RM.Activo,
         RM.ActivoSub,
         RM.CuentaMayor,
         RM.CentroCoste,
         RM.OrdenEstadistica,
         RM.GrupoArt,
         RM.centro + '-' + RM.tipostock + '-' + RM.clasemov + '-' + 'WE' AS CenMov_Id
  FROM   dbo.SAPRecepciones AS RM
  WHERE  ( RM.fecha >= (SELECT fecha
                        FROM   dbo.fechaconsulta) )