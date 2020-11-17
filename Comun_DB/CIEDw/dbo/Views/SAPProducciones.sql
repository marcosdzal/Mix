CREATE VIEW dbo.SAPProducciones
AS
SELECT        B.Centro, 
    B.Bono, 
    B.Fecha, 
    B.Turno, 
    B.TipoBono, 
    B.EsAPT, 
    BL.Material, 
    BL.LineaBono, 
    BL.VersionFabricacion, 
    BL.PuestoTrabajo, 
    BL.Lote, 
    BL.CantidadOK, 
    BL.CantidadNoOK, 
    BL.CantidadRetrabajo, 
    BL.Status, 
    BL.UNMedida, 
    BL.Colada, 
    BL.CantidadRetrabajadaOK, 
    BL.CantidadRetrabajadaNoOK, 
    BL.ClaveControl, 
    BL.NumeroOP, 
    M.Articulo, 
    M.DescrMaterial, 
    BL.CantBase AS Cadencia
    FROM Bonos as B INNER JOIN
         BonosLineas as BL
            ON B.Centro = BL.Centro 
                AND B.Bono = BL.Bono 
        INNER JOIN AllMaterialsData as M
            ON BL.Centro = M.Centro 
                AND BL.Material = M.Material
WHERE (B.Borrado = 0)