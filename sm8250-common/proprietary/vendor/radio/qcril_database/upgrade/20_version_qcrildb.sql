BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 20);

INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','10','110','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','10','118','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','10','119','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','20','110','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','20','118','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','20','119','','');

COMMIT TRANSACTION;
