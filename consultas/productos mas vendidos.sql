select  p.nombre as producto, sum(fd.cantidad) as total_vendido
from producto p 
join factura_detalle fd on p.id = fd.producto_id 
group by p.id, p.nombre 
order by total_vendido  desc 

