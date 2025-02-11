SELECT SQL_NO_CACHE dependencia_id,count(*)
FROM cargos_liquidaciones 
INNER JOIN personas_liquidaciones
  ON  cargos_liquidaciones.persona_liquidacion_id = personas_liquidaciones.id
WHERE liquidaciones_id = 292
GROUP BY dependencia_id;