SELECT antiguedad_total_aa, count(persona_id)
FROM `personas_liquidaciones` 
WHERE liquidaciones_id = 292
GROUP BY antiguedad_total_aa;