BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 18);

INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','117','','');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','118','','');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','143','','');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','144','','');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','145','','');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','147','','');

COMMIT TRANSACTION;
