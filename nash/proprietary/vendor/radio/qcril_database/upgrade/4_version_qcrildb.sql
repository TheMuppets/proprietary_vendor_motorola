BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 4);

INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','88','000','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','88','08','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','88','110','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','88','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','88','118','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','88','119','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','88','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','88','999','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','99','000','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','99','08','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','99','110','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','99','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','99','118','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','99','119','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','99','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','99','999','','');

COMMIT TRANSACTION;
