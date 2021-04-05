BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 19);

INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','03','110','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','03','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','03','911','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','07','110','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','07','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','07','911','','');

COMMIT TRANSACTION;
