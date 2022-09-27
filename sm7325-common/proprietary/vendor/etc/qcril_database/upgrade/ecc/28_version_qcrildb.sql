
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='28' where property='qcrildb_version';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '706' AND NUMBER = '133';

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','01','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','01','112','','');

