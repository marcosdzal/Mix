




CREATE view [dbo].[z_Fact_Inversiones] as 

with 

InvBPC as 
(SELECT  [Fecha]
	  ,Planta
      ,[Sociedad]
      ,[CodInversion] as Grupo
	  ,'000000000000' as codOrden
      ,1000*[Presupuesto] as PptoBPC
      ,1000*[Real] as RealBPC
	  ,null as Presupuesto
	  ,null as Real
	  ,null as Comprometido
  FROM [z_Fact_InversionesBPC]
 
  )
  ,
  InvSAP as (
  SELECT [Fecha]
	   ,Planta
      ,[Sociedad]
      ,[Grupo]
      ,[codOrden]
	  ,null as PptoBPC
	  ,null as RealBPC
      ,[Presupuesto]
	  ,[Real]
      ,[Comprometido]
  FROM [z_Fact_InversionesSAP]
  

  )

  select * from InvBPC 
  union all
  select * from InvSAP 
  union all
  select 1 fromdsf
	
