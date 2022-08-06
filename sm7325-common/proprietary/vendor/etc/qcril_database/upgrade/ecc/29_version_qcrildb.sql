BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 29);

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','06','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','10','911','','');

INSERT INTO "qcril_emergency_source_mcc_table" VALUES('466','110','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('466','119','','');

COMMIT TRANSACTION;
