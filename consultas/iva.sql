select f.id, SUM(pr.precio * fd.cantidad) * 0.1 as iva
from public.factura f
join public.factura_detalle fd on f.id = fd.factura_id
join public.producto pr on fd.producto_id = pr.id
group by f.id order by f.id;
