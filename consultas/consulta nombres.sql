select f.fecha_emision, c.nombre as cliente, c.apellido, p.nombre as producto, ft.nombre as tipo_factura, SUM(fd.cantidad) as total_cantidades
from cliente c
join factura f on c.id = f.cliente_id 
join factura_detalle fd on f.id = fd.factura_id 
join producto p on fd.producto_id = p.id 
join factura_tipo ft on f.factura_tipo_id = ft.id 
group by f.fecha_emision , c.nombre , c.apellido , p.nombre , ft.nombre 
order by total_cantidades	