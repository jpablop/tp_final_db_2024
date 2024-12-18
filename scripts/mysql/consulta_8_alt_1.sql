START TRANSACTION;

DELETE FROM items 
WHERE cargo_liquidacion_id IN (
 SELECT cl.id FROM cargos_liquidaciones cl 
 INNER JOIN personas_liquidaciones pl ON pl.id = cl.persona_liquidacion_id
 WHERE pl.persona_id = 999999 AND liquidaciones_id = 292
);

DELETE FROM cargos_liquidaciones 
WHERE persona_liquidacion_id  IN (
    SELECT id  FROM personas_liquidaciones WHERE persona_id = 999999 
    AND liquidaciones_id = 292
);

DELETE FROM personas_liquidaciones 
WHERE persona_id = 999999 AND liquidaciones_id = 292;

COMMIT;
