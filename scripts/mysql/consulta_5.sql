select concepto_id,AVG (monto)
FROM cargos_liquidaciones 
inner join personas_liquidaciones
  on cargos_liquidaciones.persona_liquidacion_id = personas_liquidaciones.id
inner join items on items.cargo_liquidacion_id = cargos_liquidaciones.id
WHERE liquidaciones_id = 292 
AND concepto_id = 1058344287
GROUP BY concepto_id;
