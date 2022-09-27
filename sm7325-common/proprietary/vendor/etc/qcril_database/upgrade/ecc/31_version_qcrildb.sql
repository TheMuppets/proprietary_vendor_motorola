
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='31' where property='qcrildb_version';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '740' AND NUMBER = '101';

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('740','00','123','','');

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('740','01','101','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('740','02','101','','');

