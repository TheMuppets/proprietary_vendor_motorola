BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 38);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '262' AND MNC = '03' AND NUMBER = '110';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '262' AND MNC = '07' AND NUMBER = '110';

COMMIT TRANSACTION;
