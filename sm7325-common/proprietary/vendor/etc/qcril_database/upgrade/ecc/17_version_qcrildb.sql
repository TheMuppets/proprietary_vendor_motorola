
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='17' where property='qcrildb_version';
DELETE FROM qcril_emergency_source_voice_table where MCC = '460' AND NUMBER = '112';

INSERT OR REPLACE  INTO "qcril_emergency_source_mcc_table" VALUES('460','911','','');

