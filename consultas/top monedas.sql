SELECT m.nombre, COUNT(*) AS total_utilizadas
FROM public.moneda m
JOIN public.factura f ON m.id = f.moneda_id
GROUP BY m.id, m.nombre
ORDER BY total_utilizadas DESC
