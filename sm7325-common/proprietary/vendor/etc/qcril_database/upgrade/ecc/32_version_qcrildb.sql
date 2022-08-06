BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 32);

INSERT INTO "qcril_emergency_source_mcc_table" VALUES('404','100','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('404','101','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('404','108','','');

INSERT INTO "qcril_emergency_source_mcc_table" VALUES('405','100','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('405','101','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('405','108','','');

COMMIT TRANSACTION;
