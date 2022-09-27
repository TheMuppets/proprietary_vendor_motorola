
CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT, def_val TEXT, value TEXT, PRIMARY KEY(property));

UPDATE qcril_properties_table set value='10' where property='qcrildb_version';

INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('310','730',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','220',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','221',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','222',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','223',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','224',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','225',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','226',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','227',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','228',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','229',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','580',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','581',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','582',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','583',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','584',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','585',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','586',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','587',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','588',1);
INSERT OR REPLACE INTO "qcril_operator_specific_config" VALUES('311','589',1);



