BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 15);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '88';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99';
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','88','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','88','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','99','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','99','911','','');

COMMIT TRANSACTION;
