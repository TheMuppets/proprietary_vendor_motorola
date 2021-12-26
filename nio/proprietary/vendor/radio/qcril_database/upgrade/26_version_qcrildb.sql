BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 26);

INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','840',1);

COMMIT TRANSACTION;
