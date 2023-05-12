SELECT c.nombre, c.apellido, SUM(p.precio) AS total_gastado
FROM public.cliente c
JOIN public.factura f ON c.id = f.cliente_id
JOIN public.factura_detalle fd ON f.id = fd.factura_id
JOIN public.producto p ON fd.producto_id = p.id
GROUP BY c.id, c.nombre, c.apellido
ORDER BY total_gastado DESC
