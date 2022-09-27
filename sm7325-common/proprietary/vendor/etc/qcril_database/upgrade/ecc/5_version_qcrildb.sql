
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='5' where property='qcrildb_version';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '310' AND NUMBER = '*272*911';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '310' AND NUMBER = '*272#911';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '311' AND NUMBER = '*272*911';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '311' AND NUMBER = '*272#911';

