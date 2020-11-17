CREATE VIEW [dbo].[Dim_Pais]
	AS SELECT NombrePais,
	CodAlfa2,
	CodAlfa3,
	CodNum
	FROM Dim_Paises