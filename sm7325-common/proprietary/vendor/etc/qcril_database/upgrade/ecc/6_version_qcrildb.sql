
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='6' where property='qcrildb_version';
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('525','999','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('525','995','','full');

