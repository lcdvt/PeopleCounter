-- Creator:       MySQL Workbench 6.0.9/ExportSQLite plugin 2009.12.02
-- Author:        Lodewijk
-- Caption:       New Model
-- Project:       Name of the project
-- Changed:       2014-04-10 11:44
-- Created:       2014-04-10 11:38
PRAGMA foreign_keys = OFF;

-- Schema: PeopleCounter
BEGIN;
CREATE TABLE "people"(
  "timestamp" DATETIME PRIMARY KEY NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "incoming" INTEGER,
  "gate" INTEGER
);
COMMIT;
