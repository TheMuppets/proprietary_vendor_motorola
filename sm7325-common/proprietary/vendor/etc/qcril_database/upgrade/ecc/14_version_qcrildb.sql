/*
  Copyright (c) 2018 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/


UPDATE qcril_properties_table set value='14' where property='qcrildb_version';
DELETE FROM qcril_operator_specific_config where MCC = '310' AND MNC = '730';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '220';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '221';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '222';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '223';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '224';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '225';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '226';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '227';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '228';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '229';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '580';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '581';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '582';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '583';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '584';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '585';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '586';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '587';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '588';
DELETE FROM qcril_operator_specific_config where MCC = '311' AND MNC = '589';

