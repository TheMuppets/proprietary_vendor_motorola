BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 31);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '740' AND NUMBER = '101';

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('740','00','123','','');

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('740','01','101','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('740','02','101','','');

COMMIT TRANSACTION;
