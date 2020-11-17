CREATE VIEW [dbo].[Dim_TipoPosicionPedido]
	AS 
  SELECT 
      TP.Centro + '-' + TP.TipoPosicionNum  AS CenTPos_Id,
      TP.TipoPosicion                       AS TipoPosicionPedido,
      TP.DescrTipoPosicion                  AS descrTipoPosPedido,
      TP.TipoPosicionNum
  FROM Dim_TiposPosicionPedidoSAP as TP