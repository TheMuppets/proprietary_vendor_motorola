BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 27);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '708' AND MNC = '001';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '706' AND MNC = '01';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '706' AND NUMBER = '122';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '706' AND NUMBER = '118';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '706' AND NUMBER = '115';
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('706','04','122','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('706','04','118','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('706','04','115','','');

COMMIT TRANSACTION;
