START TRANSACTION;

INSERT INTO personas_liquidaciones(liquidaciones_id, persona_id, obra_social_id, antiguedad_total_aa, antiguedad_total_mm, antiguedad_total_dd, atulp, adulp, discapacidad_id, genero_id, estado_civil_id, documento, tipo_documento_id, nacionalidad_id, apellido, nombre, titulo_persona_id) 
VALUES (292, 999999, 1, 10, 10, 10, 0, 1, 0, 1, 1, '27854026', 0, 1, 'PEREZ', 'JUAN PABLO', 0);

SET @per_liq_id = LAST_INSERT_ID();

INSERT INTO cargos_liquidaciones(zona_id, liquido_normal, dias_trabajados, cargo_id, liquidacion_id, tipo_liquidacion_id, permanencia_aa, permanencia_mm, titulo, situacion_id, persona_liquidacion_id, antiguedad_cargo_aa, antiguedad_cargo_mm, dependencia_id, tipo_personal_id, funcion_id, fecha_situacion, subgrupo_id) 
VALUES (0, 100, 30, 999999, 292, 10,  10, 10, 0, 0, @per_liq_id, 10, 10, 1, 1, 1, '20241201', 0);

SET @car_liq_id = LAST_INSERT_ID();

INSERT INTO items( numero, monto, concepto_id, cargo_liquidacion_id) 
VALUES (1, 50, 899999, @car_liq_id),
(2, 50, 999999, @car_liq_id);

COMMIT;
