BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 34);

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('242','02','110','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('242','02','113','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('242','05','110','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('242','05','113','','');

COMMIT TRANSACTION;


