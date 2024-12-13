select cargo_id
FROM cargos_liquidaciones 
inner join personas_liquidaciones
  on cargos_liquidaciones.persona_liquidacion_id = personas_liquidaciones.id
WHERE liquidaciones_id = 292
AND dependencia_id = 12;