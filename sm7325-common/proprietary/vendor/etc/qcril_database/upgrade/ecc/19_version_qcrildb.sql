
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='19' where property='qcrildb_version';
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','03','110','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','03','112','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','03','911','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','07','110','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','07','112','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_mnc_table" VALUES('262','07','911','','');

