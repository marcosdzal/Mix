CREATE VIEW [dbo].[Fact_RendimientosProduccion]
AS 
SELECT 
    Centro + '-' + PuestoTrabajo AS CenPue_Id, 
    Centro + '-' + Turno AS CenTur_Id, 
    Centro + '-' + Material AS CenMat_Id, 
    Centro + '-' + CentroBeneficio AS CenBen_Id, 
    Centro, 
    Fecha, 
    CantidadOK, 
    CantidadNoOK, 
    TotalFabricacion, 
    HNoPPlan, 
    ProduccionTeorica, 
    TasaDisponible, 
    TasaRendimiento, 
    TasaCalidad, 
    OEE, 
    HorasProductivas, 
    HorasNoProductivas, 
    HCalculoNeto, 
    TiempoTeorico, 
    TasaOcupacion, 
    CantidadRM, 
    CantidadRB
FROM dbo.Fact_RendimientosProduccionSAP
WHERE (Fecha >= 
        (SELECT Fecha
         FROM dbo.FechaConsulta)
      )