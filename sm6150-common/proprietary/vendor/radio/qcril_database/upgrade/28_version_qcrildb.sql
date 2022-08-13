BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 28);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '706' AND NUMBER = '133';

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','01','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','01','112','','');

COMMIT TRANSACTION;