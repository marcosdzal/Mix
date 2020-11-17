
CREATE VIEW [dbo].[Fact_Ventas]
AS
  SELECT centro + '-' + material    AS CenMat_Id,
         centro + '-' + solicitante AS CenCli_Id,
         centro + '-' + Almacen as CenAlm_Id,
         centro + '-' + Destinatario as CenDes_Id,
         centro,
         fecha,
         tipodoccomercial           AS [Tipo Documento Comercial],
         entrega,
         claseentrega               AS [Clase Entrega],
         denominacionclaseentrega   AS [Denominación Clase Entrega],
         destinatario,
         nombredest                 AS [Nombre Destinatario],
         paisdestinatario           AS [País Destinatario],
         posentrega                 AS [Pos Entrega],
         tipopos                    AS [Tipo Pos],
         almacen,
         lote,
         matcliente                 AS [Mat Cliente],
         cantidadentrega            AS [Cantidad Entrega],
         unmedida                   AS [Unidad Medida],
         monedadoc                  AS [Moneda Doc],
         pesonetopos                AS [Peso Neto Pos],
         pesobrutopos               AS [Peso Bruto Pos],
         unpeso                     AS [Unidad Peso],
         volumenpos                 AS [Volumen Pos],
         preciovta                  AS [Precio Vta],
         importelinea               AS [Importe Linea]
  FROM   dbo.ventasclientes
  WHERE  ( fecha >= (SELECT fecha
                     FROM   dbo.fechaconsulta) )