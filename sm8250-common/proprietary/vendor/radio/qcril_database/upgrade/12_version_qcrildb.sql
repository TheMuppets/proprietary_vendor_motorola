BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 12);

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('234','30','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('234','30','999','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('234','33','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('234','33','999','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','01','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','01','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('260','06','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('260','98','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('260','06','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('260','98','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('260','02','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('260','02','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('242','02','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('242','02','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('242','05','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('242','05','112','','');

COMMIT TRANSACTION;


