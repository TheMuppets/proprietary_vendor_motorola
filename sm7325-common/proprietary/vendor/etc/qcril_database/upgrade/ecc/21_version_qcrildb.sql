
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='21' where property='qcrildb_version';
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_mnc_table" VALUES('732','360','123','','');
INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_mnc_table" VALUES('732','101','123','','');

