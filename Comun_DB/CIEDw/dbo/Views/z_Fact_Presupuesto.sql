







CREATE view [dbo].[z_Fact_Presupuesto] as 
select 
Planta
, Sociedad
, cast ( cast(Ano*10000+101 as char(8)) as date) as fecha
, Orden
, Presupuesto
, PptoInicial
from 
[dbo].[z_SAPPresupuesto]