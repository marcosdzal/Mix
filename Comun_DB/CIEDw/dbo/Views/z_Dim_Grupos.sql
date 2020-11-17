

CREATE view [dbo].[z_Dim_Grupos] as 
select distinct 
	[CodInversion] as Grupo
	  ,[Inversion] as DesGrupo
   FROM [z_Fact_InversionesBPC]

