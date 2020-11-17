
CREATE VIEW [dbo].[Dim_Plantas]
AS
   SELECT P.plant as Planta,
         P.PlantName as [nombre planta],
         S.sector,
         S.denominacion AS [Nombre Sector],
         P.Currency as [Moneda],
         p.Calendar as Calendario,
         p.CurrentYear as [Año Curso],
         p.CurrentMonth as [Mes Curso],
		 p.Currency + '-' + p.CurrencyReport as Cur_Id,
         P.ClavePais as [País],
         Paises.CodAlfa2               AS PaisISO2,
         Paises.CodAlfa3               AS PaisISO3,
         Paises.CodNum                 AS PaisISONum,
         Paises.NombrePais             AS PaisNombre
  FROM   dbo.sapplants as P
         LEFT OUTER JOIN dbo.sectores AS S
                      ON P.sector = S.sector
         left join Dim_Pais as Paises on ClavePais = Paises.CodAlfa2
UNION

  SELECT P.Centro as Planta, 
         p.NombreEmpresa as [nombre planta],
         '' as sector,
         '' AS [Nombre Sector],
         '' as [Moneda],
         '' as Calendario,
         YEAR(GETDATE()) as [Año Curso],
         MONTH(GETDATE()) as [Mes Curso],
		 '' + '-' + '' as Cur_Id,
         ''              AS [País],
         ''              AS PaisISO2,
         ''              AS PaisISO3,
         ''              AS PaisISONum,
         ''              AS PaisNombre
 FROM companiascaptor as P
WHERE NOT EXISTS(SELECT 1 from sapplants 
                 WHERE sapplants.Plant = P.Centro)