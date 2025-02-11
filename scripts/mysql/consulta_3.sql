SELECT SQL_NO_CACHE cargo_id
FROM cargos_liquidaciones 
INNER JOIN personas_liquidaciones
  ON cargos_liquidaciones.persona_liquidacion_id = personas_liquidaciones.id
WHERE liquidaciones_id = 292
AND dependencia_id = 12;