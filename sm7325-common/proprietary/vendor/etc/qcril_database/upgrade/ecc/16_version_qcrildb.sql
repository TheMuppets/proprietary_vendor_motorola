BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 16);


INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('310','750',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','440',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('310','600',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','920',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('312','160',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('310','930',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('310','900',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('310','040',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','350',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','420',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('310','360',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','140',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('310','960',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','050',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','650',1);

COMMIT TRANSACTION;


