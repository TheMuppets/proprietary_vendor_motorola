BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 39);

INSERT INTO "qcril_emergency_source_mcc_table" VALUES('450','111','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('450','112','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('450','113','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('450','117','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('450','118','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('450','119','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('450','122','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('450','125','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('450','911','','');

COMMIT TRANSACTION;
