






CREATE view [dbo].[z_Dim_Ordenes] as 
select distinct 
RIGHT('000000000000'+ISNULL(Orden,''),12) as codOrden,
--[Orden] as codOrden,
[Descripcion] as Orden
from 
[dbo].[z_ExcelOrdenes]
union all
select '000000000000' as orden,
'Sin descripción' as Orden

