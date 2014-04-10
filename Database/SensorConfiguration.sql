PRAGMA foreign_keys = OFF;

BEGIN;

-- GPIO inputs
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 30, 0, 'P9_11' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 60, 0, 'P9_12' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 31, 0, 'P9_13' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 50, 0, 'P9_14' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 48, 0, 'P9_15' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 51, 0, 'P9_16' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES (  5, 0, 'P9_17' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES (  4, 0, 'P9_18' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES (  3, 0, 'P9_21' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES (  2, 0, 'P9_22' );

-- GPIO outputs
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 66, 1, 'P8_07' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 67, 1, 'P8_08' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 69, 1, 'P8_09' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 68, 1, 'P8_10' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 45, 1, 'P8_11' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 44, 1, 'P8_12' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 23, 1, 'P8_13' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 26, 1, 'P8_14' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 47, 1, 'P8_15' );
INSERT INTO "gpio" ( "gpio_id", "direction", "head_pin" ) VALUES ( 46, 1, 'P8_16' );
                                                                         
-- Gate sensors
INSERT INTO "sensors" ( "sensor_id", "name", "gpio_id" ) VALUES ( 1,  'Sensor 1a', 30 );
INSERT INTO "sensors" ( "sensor_id", "name", "gpio_id" ) VALUES ( 2,  'Sensor 1b', 60 );
INSERT INTO "sensors" ( "sensor_id", "name", "gpio_id" ) VALUES ( 3,  'Sensor 2a', 31 );
INSERT INTO "sensors" ( "sensor_id", "name", "gpio_id" ) VALUES ( 4,  'Sensor 2b', 50 );
INSERT INTO "sensors" ( "sensor_id", "name", "gpio_id" ) VALUES ( 5,  'Sensor 3a', 48 );
INSERT INTO "sensors" ( "sensor_id", "name", "gpio_id" ) VALUES ( 6,  'Sensor 3b', 51 );
INSERT INTO "sensors" ( "sensor_id", "name", "gpio_id" ) VALUES ( 7,  'Sensor 4a', 5  );
INSERT INTO "sensors" ( "sensor_id", "name", "gpio_id" ) VALUES ( 8,  'Sensor 4b', 4  );
INSERT INTO "sensors" ( "sensor_id", "name", "gpio_id" ) VALUES ( 9,  'Sensor 5a', 3  );
INSERT INTO "sensors" ( "sensor_id", "name", "gpio_id" ) VALUES ( 10, 'Sensor 5b', 2  );

-- Gates
INSERT INTO "gates" ( "gate_id", "name", "inside_sensor_id", "outside_sensor_id"  ) VALUES ( 1, 'Gate 1', 1, 2  );
INSERT INTO "gates" ( "gate_id", "name", "inside_sensor_id", "outside_sensor_id"  ) VALUES ( 2, 'Gate 2', 3, 4  );
INSERT INTO "gates" ( "gate_id", "name", "inside_sensor_id", "outside_sensor_id"  ) VALUES ( 3, 'Gate 3', 4, 6  );
INSERT INTO "gates" ( "gate_id", "name", "inside_sensor_id", "outside_sensor_id"  ) VALUES ( 4, 'Gate 4', 5, 8  );
INSERT INTO "gates" ( "gate_id", "name", "inside_sensor_id", "outside_sensor_id"  ) VALUES ( 5, 'Gate 5', 9, 10 );

COMMIT;

