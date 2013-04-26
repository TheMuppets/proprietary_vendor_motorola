# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

VENDOR_BLOB_FOLDER := vendor/motorola/omap4-common/proprietary

# system/bin
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/bin/batch:/system/bin/batch \
$(VENDOR_BLOB_FOLDER)/bin/battd:/system/bin/battd \
$(VENDOR_BLOB_FOLDER)/bin/dbvc_atvc_property_set:/system/bin/dbvc_atvc_property_set \
$(VENDOR_BLOB_FOLDER)/bin/dumpe2fs:/system/bin/dumpe2fs \
$(VENDOR_BLOB_FOLDER)/bin/enc_mgt_tool:/system/bin/enc_mgt_tool \
$(VENDOR_BLOB_FOLDER)/bin/fips_loader:/system/bin/fips_loader \
$(VENDOR_BLOB_FOLDER)/bin/ftmipcd:/system/bin/ftmipcd \
$(VENDOR_BLOB_FOLDER)/bin/libthermal-manager.cfg:/system/bin/libthermal-manager.cfg \
$(VENDOR_BLOB_FOLDER)/bin/mount_ext3.sh:/system/bin/mount_ext3.sh \
$(VENDOR_BLOB_FOLDER)/bin/startup_smc.sh:/system/bin/startup_smc.sh \
$(VENDOR_BLOB_FOLDER)/bin/thermaldaemon:/system/bin/thermaldaemon \
$(VENDOR_BLOB_FOLDER)/bin/tty2ttyd:/system/bin/tty2ttyd \
$(VENDOR_BLOB_FOLDER)/bin/whisperd:/system/bin/whisperd

# system/etc
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/ecryptfs.tab:/system/etc/ecryptfs.tab \
$(VENDOR_BLOB_FOLDER)/etc/encrypt.tab:/system/etc/encrypt.tab \
$(VENDOR_BLOB_FOLDER)/etc/smc_android_cfg.ini:/system/etc/smc_android_cfg.ini \
$(VENDOR_BLOB_FOLDER)/etc/smc_pa.ift:/system/etc/smc_pa.ift \
$(VENDOR_BLOB_FOLDER)/etc/smc_pa_pk_4_8Mb_ipa.bin:/system/etc/smc_pa_pk_4_8Mb_ipa.bin \
$(VENDOR_BLOB_FOLDER)/etc/smc_pa_pk_4_ipa.bin:/system/etc/smc_pa_pk_4_ipa.bin \
$(VENDOR_BLOB_FOLDER)/etc/firmware/ap_bt_data.bin:/system/etc/firmware/ap_bt_data.bin

# system/usr
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc:system/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc \
$(VENDOR_BLOB_FOLDER)/usr/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl

# system/lib/hw
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/lib/hw/alsa.omap4:/system/lib/hw/alsa.omap4.so \
$(VENDOR_BLOB_FOLDER)/lib/hw/gps.spyder.so:/system/lib/hw/gps.omap4.so

# system/lib
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/lib/libaudio_ext.so:/system/lib/libaudio_ext.so \
$(VENDOR_BLOB_FOLDER)/lib/libbattd.so:/system/lib/libbattd.so \
$(VENDOR_BLOB_FOLDER)/lib/libdataencrypt_openssl.so:/system/lib/libdataencrypt_openssl.so \
$(VENDOR_BLOB_FOLDER)/lib/libdataencrypt_tpa.so:/system/lib/libdataencrypt_tpa.so \
$(VENDOR_BLOB_FOLDER)/lib/libdataencrypt_utils.so:/system/lib/libdataencrypt_utils.so \
$(VENDOR_BLOB_FOLDER)/lib/libhdcp.so:/system/lib/libhdcp.so \
$(VENDOR_BLOB_FOLDER)/lib/libhdmi.so:/system/lib/libhdmi.so \
$(VENDOR_BLOB_FOLDER)/lib/libmot_atcmd.so:/system/lib/libmot_atcmd.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_netutil.so:/system/lib/libmoto_netutil.so \
$(VENDOR_BLOB_FOLDER)/lib/libnbgm_9.0.1.so:/system/lib/libnbgm_9.0.1.so \
$(VENDOR_BLOB_FOLDER)/lib/libnmea.so:/system/lib/libnmea.so \
$(VENDOR_BLOB_FOLDER)/lib/libopenssl-smime.so:/system/lib/libopenssl-smime.so \
$(VENDOR_BLOB_FOLDER)/lib/libOMX.ITTIAM.AAC.encode.so:/system/lib/libOMX.ITTIAM.AAC.encode.so \
$(VENDOR_BLOB_FOLDER)/lib/libpkip.so:/system/lib/libpkip.so \
$(VENDOR_BLOB_FOLDER)/lib/libpppd_plugin-ril.so:/system/lib/libpppd_plugin-ril.so \
$(VENDOR_BLOB_FOLDER)/lib/libsmapi.so:/system/lib/libsmapi.so \
$(VENDOR_BLOB_FOLDER)/lib/libthermal_config.so:/system/lib/libthermal_config.so \
$(VENDOR_BLOB_FOLDER)/lib/libthermal_manager.so:/system/lib/libthermal_manager.so \
$(VENDOR_BLOB_FOLDER)/lib/libtpa.so:/system/lib/libtpa.so \
$(VENDOR_BLOB_FOLDER)/lib/libtpa_core.so:/system/lib/libtpa_core.so

# system/etc/omapcam
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/SEN2.cfg:system/etc/omapcam/SEN2.cfg \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/SEN2_EE.cfg:system/etc/omapcam/SEN2_EE.cfg \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/R8_MVEN002_LD2_ND0_IR0_SH0_FL1_SVEN002_DCCID1039.cfg:system/etc/omapcam/R8_MVEN002_LD2_ND0_IR0_SH0_FL1_SVEN002_DCCID1039.cfg \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/R8_MVEN002_LD2_ND0_IR0_SH0_FL1_SVEN002_DCCID1039_CAL.cfg:system/etc/omapcam/R8_MVEN002_LD2_ND0_IR0_SH0_FL1_SVEN002_DCCID1039_CAL.cfg \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/R8_MVEN002_LD2_ND0_IR0_SH0_FL1_SVEN002_DCCID1039_EE.cfg:system/etc/omapcam/R8_MVEN002_LD2_ND0_IR0_SH0_FL1_SVEN002_DCCID1039_EE.cfg

# system/etc/omapcam/module1_cal
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/module1_cal/cid1039_ov8820_alg_3a_ae_supp3_dcc.bin:system/etc/omapcam/module1_cal/cid1039_ov8820_alg_3a_ae_supp3_dcc.bin \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/module1_cal/cid1039_ov8820_isif_clamp_dcc.bin:system/etc/omapcam/module1_cal/cid1039_ov8820_isif_clamp_dcc.bin \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/module1_cal/cid1039_ov8820_lsc_interp.bin:system/etc/omapcam/module1_cal/cid1039_ov8820_lsc_interp.bin

# system/etc/omapcam/module1_ee
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/module1_ee/cid1039_ov8820_ducati_gamma.bin:system/etc/omapcam/module1_ee/cid1039_ov8820_ducati_gamma.bin \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/module1_ee/cid1039_ov8820_ipipe_ee_dcc.bin:system/etc/omapcam/module1_ee/cid1039_ov8820_ipipe_ee_dcc.bin \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/module1_ee/cid1039_ov8820_ducati_nsf_ldc.bin:system/etc/omapcam/module1_ee/cid1039_ov8820_ducati_nsf_ldc.bin

# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
$(VENDOR_BLOB_FOLDER)/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true
