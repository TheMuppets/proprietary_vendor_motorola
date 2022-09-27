
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='39' where property='qcrildb_version';
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_table" VALUES('450','111','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_table" VALUES('450','112','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_table" VALUES('450','113','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_table" VALUES('450','117','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_table" VALUES('450','118','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_table" VALUES('450','119','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_table" VALUES('450','122','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_table" VALUES('450','125','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_table" VALUES('450','911','','');

