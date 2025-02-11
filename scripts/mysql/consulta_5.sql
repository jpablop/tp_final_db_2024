SELECT SQL_NO_CACHE concepto_id,AVG (monto)
FROM cargos_liquidaciones 
INNER JOIN personas_liquidaciones
  ON cargos_liquidaciones.persona_liquidacion_id = personas_liquidaciones.id
INNER JOIN items 
  ON items.cargo_liquidacion_id = cargos_liquidaciones.id
WHERE liquidaciones_id = 292 
AND concepto_id = 1058344287
GROUP BY concepto_id;
