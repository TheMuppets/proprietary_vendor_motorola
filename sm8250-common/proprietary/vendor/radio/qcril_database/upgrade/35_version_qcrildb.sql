BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 35);

INSERT INTO "qcril_emergency_source_voice_table" VALUES('466','110','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('466','119','','full');

COMMIT TRANSACTION;
