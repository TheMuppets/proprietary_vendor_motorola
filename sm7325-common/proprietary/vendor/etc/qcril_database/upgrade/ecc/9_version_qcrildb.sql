
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='9' where property='qcrildb_version';

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '370' AND MNC = '02';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '704' AND MNC = '01';
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('712','03','911','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('712','03','112','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('706','01','133','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('706','01','122','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('704','01','119','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('704','01','110','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('704','01','120','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('704','01','122','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('704','01','123','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('704','01','125','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('704','01','128','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','001','100','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','001','111','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','001','113','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','001','116','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','001','118','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','001','195','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','001','198','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('708','001','199','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('710','21','115','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('710','21','118','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('710','21','128','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('710','73','115','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('710','73','118','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('710','73','128','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('714','03','103','','');
INSERT OR REPLACE INTO "qcril_emergency_source_mcc_mnc_table" VALUES('714','03','104','','');



