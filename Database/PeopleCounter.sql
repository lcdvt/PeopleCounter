-- Creator:       MySQL Workbench 6.0.9/ExportSQLite plugin 2013.08.05
-- Author:        Lodewijk
-- Caption:       New Model
-- Project:       Name of the project
-- Changed:       2014-04-10 16:03
-- Created:       2014-04-10 13:45
PRAGMA foreign_keys = OFF;

-- Schema: PeopleCounter
BEGIN;

DROP TABLE IF EXISTS "gpio";

CREATE TABLE IF NOT EXISTS "gpio"(
  "gpio_id" INTEGER PRIMARY KEY NOT NULL,
  "direction" INTEGER,
  "head_pin" TEXT
);

DROP TABLE IF EXISTS "sensors";

CREATE TABLE IF NOT EXISTS "sensors"(
  "sensor_id" INTEGER PRIMARY KEY NOT NULL,
  "name" TEXT,
  "gpio_id" INTEGER,
  CONSTRAINT "fk_sensors_gpio1"
    FOREIGN KEY("gpio_id")
    REFERENCES "gpio"("gpio_id")
);
CREATE INDEX "sensors.fk_sensors_gpio1_idx" ON "sensors"("gpio_id");

DROP TABLE IF EXISTS "gates";

CREATE TABLE IF NOT EXISTS "gates"(
  "gate_id" INTEGER PRIMARY KEY NOT NULL,
  "name" TEXT,
  "inside_sensor_id" INTEGER,
  "outside_sensor_id" INTEGER,
  CONSTRAINT "fk_gates_sensors1"
    FOREIGN KEY("outside_sensor_id")
    REFERENCES "sensors"("sensor_id"),
  CONSTRAINT "fk_gates_sensors2"
    FOREIGN KEY("inside_sensor_id")
    REFERENCES "sensors"("sensor_id")
);
CREATE INDEX "gates.fk_gates_sensors1_idx" ON "gates"("outside_sensor_id");
CREATE INDEX "gates.fk_gates_sensors2_idx" ON "gates"("inside_sensor_id");

DROP TABLE IF EXISTS "people";

CREATE TABLE IF NOT EXISTS "people"(
  "timestamp" DATETIME PRIMARY KEY NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "incomming" INTEGER,
  "gate_id" INTEGER,
  CONSTRAINT "fk_people_gates"
    FOREIGN KEY("gate_id")
    REFERENCES "gates"("gate_id")
);
CREATE INDEX "people.fk_people_gates_idx" ON "people"("gate_id");

COMMIT;
