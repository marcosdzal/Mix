
CREATE VIEW [dbo].[Dim_TiposMovimientos]
AS
  SELECT DISTINCT centro + '-' + '-' + tipostock + '-' + clasemov + '-' + clasedoc AS CenMov_Id,
                  centro,
                  clasemov         AS [Clase Movimiento],
                  clasedoc         AS [Clase Documento],
                  tipostock        AS [Tipo Stock],
                  tipomov          AS [Tipo Movimiento],
                  valorar,
                  signo
  FROM   dbo.tiposmovimientos