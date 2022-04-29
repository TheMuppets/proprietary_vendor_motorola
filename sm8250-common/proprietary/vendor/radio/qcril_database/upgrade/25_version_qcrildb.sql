BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 25);

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('310','730','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('310','240','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','580','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','220','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','221','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','222','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','223','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','224','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','225','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','226','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','227','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','228','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','229','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','581','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','582','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','583','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','584','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','585','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','586','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','587','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','588','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','589','*272911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('311','870','*272911','','');

COMMIT TRANSACTION;
