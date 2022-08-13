BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 23);

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('219','10','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('219','10','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('232','01','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('232','01','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('240','01','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('240','01','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('240','07','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('240','07','911','','');
COMMIT TRANSACTION;
