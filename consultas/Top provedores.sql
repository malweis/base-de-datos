select p.nombre as proveedor, count(*) as total_productos
from proveedor p 
join producto p2 on p.id = p2.proveedor_id 
group by p.id , p.nombre 
order by  total_productos desc 