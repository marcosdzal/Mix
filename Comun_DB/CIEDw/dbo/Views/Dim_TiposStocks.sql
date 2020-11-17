
CREATE VIEW [dbo].[Dim_TiposStocks]
AS
  SELECT tipostock      AS [Tipo Stock],
         descrtipostock AS [Descripción Tipo Stock],
         valorado
  FROM   dbo.tiposstocks
