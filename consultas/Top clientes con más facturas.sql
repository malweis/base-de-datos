SELECT c.nombre, c.apellido, COUNT(*) AS total_facturas
FROM public.cliente c
JOIN public.factura f ON c.id = f.cliente_id
GROUP BY c.id, c.nombre, c.apellido
ORDER BY total_facturas DESC

