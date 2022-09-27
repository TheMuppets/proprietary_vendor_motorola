
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='26' where property='qcrildb_version';
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','840',1);

