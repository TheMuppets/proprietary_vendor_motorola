BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 6);

INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('525','999','','full');
INSERT OR REPLACE INTO "qcril_emergency_source_voice_table" VALUES('525','995','','full');

COMMIT TRANSACTION;
