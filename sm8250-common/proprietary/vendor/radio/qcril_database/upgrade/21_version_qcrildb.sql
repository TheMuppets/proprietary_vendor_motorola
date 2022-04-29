BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 21);

INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('732','360','123','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('732','101','123','','');

COMMIT TRANSACTION;
