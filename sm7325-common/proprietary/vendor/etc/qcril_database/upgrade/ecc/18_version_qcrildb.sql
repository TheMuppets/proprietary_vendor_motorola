
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='18' where property='qcrildb_version';
INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','117','','');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','118','','');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','143','','');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','144','','');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','145','','');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('228','01','147','','');

