
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='20' where property='qcrildb_version';
INSERT OR REPLACE  INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','10','110','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','10','118','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','10','119','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','20','110','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','20','118','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('440','20','119','','');

