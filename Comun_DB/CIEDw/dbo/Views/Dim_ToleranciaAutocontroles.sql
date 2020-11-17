
CREATE VIEW [dbo].[Dim_ToleranciaAutocontroles]
AS
  SELECT centro + '-' + norma    AS CenNor_Id,
         centro,
         norma,
         nombrenorma             AS [Nombre Norma],
         valornominal            AS [Valor Nominal],
         toleranciamaxima        AS [Tolerancia Máxima],
         toleranciaminima        AS [Tolerancia Mínima],
         toleranciaminimacliente AS [Tolerancia Mínima Cliente],
         toleranciamaximacliente AS [Tolerancia Máxima Cliente]
  FROM   dbo.toleranciasautocontrolescaptor
