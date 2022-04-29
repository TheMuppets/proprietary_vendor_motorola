BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 37);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '208' AND MNC = '02';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '208' AND MNC = '02';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '208' AND MNC = '91';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '208' AND MNC = '91';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '208' AND MNC = '20';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '208' AND MNC = '20';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '208' AND MNC = '21';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '208' AND MNC = '21';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '208' AND MNC = '88';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '208' AND MNC = '88';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '208' AND MNC = '09';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '208' AND MNC = '09';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '208' AND MNC = '10';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '208' AND MNC = '10';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '208' AND MNC = '11';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '208' AND MNC = '11';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '208' AND MNC = '13';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '208' AND MNC = '13';

COMMIT TRANSACTION;
