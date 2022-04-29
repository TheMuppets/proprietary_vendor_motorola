BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 17);

DELETE FROM qcril_emergency_source_voice_table where MCC = '460' AND NUMBER = '112';

INSERT INTO "qcril_emergency_source_mcc_table" VALUES('460','911','','');

COMMIT TRANSACTION;
