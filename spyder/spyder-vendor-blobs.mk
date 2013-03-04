VENDOR_BLOB_FOLDER := vendor/motorola/spyder/proprietary

# system/bin
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/bin/akmd8975:/system/bin/akmd8975 \
$(VENDOR_BLOB_FOLDER)/bin/ap_gain.bin:/system/bin/ap_gain.bin \
$(VENDOR_BLOB_FOLDER)/bin/ap_gain_mmul.bin:/system/bin/ap_gain_mmul.bin \
$(VENDOR_BLOB_FOLDER)/bin/batch:/system/bin/batch \
$(VENDOR_BLOB_FOLDER)/bin/battd:/system/bin/battd \
$(VENDOR_BLOB_FOLDER)/bin/chat-ril:/system/bin/chat-ril \
$(VENDOR_BLOB_FOLDER)/bin/dbvc_atvc_property_set:/system/bin/dbvc_atvc_property_set \
$(VENDOR_BLOB_FOLDER)/bin/dumpe2fs:/system/bin/dumpe2fs \
$(VENDOR_BLOB_FOLDER)/bin/ecckeyd:/system/bin/ecckeyd \
$(VENDOR_BLOB_FOLDER)/bin/enc_mgt_tool:/system/bin/enc_mgt_tool \
$(VENDOR_BLOB_FOLDER)/bin/ftmipcd:/system/bin/ftmipcd \
$(VENDOR_BLOB_FOLDER)/bin/libthermal-manager.cfg:/system/bin/libthermal-manager.cfg \
$(VENDOR_BLOB_FOLDER)/bin/logcatd:/system/bin/logcatd \
$(VENDOR_BLOB_FOLDER)/bin/logcatd-blan:/system/bin/logcatd-blan \
$(VENDOR_BLOB_FOLDER)/bin/mount_cdrom.sh:/system/bin/mount_cdrom.sh \
$(VENDOR_BLOB_FOLDER)/bin/mount_ext3.sh:/system/bin/mount_ext3.sh \
$(VENDOR_BLOB_FOLDER)/bin/msp430:/system/bin/msp430 \
$(VENDOR_BLOB_FOLDER)/bin/secclkd:/system/bin/secclkd \
$(VENDOR_BLOB_FOLDER)/bin/startup_smc.sh:/system/bin/startup_smc.sh \
$(VENDOR_BLOB_FOLDER)/bin/testpppd:/system/bin/testpppd \
$(VENDOR_BLOB_FOLDER)/bin/thermaldaemon:/system/bin/thermaldaemon \
$(VENDOR_BLOB_FOLDER)/bin/tty2ttyd:/system/bin/tty2ttyd \
$(VENDOR_BLOB_FOLDER)/bin/whisperd:/system/bin/whisperd

# system/etc
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/ecryptfs.tab:/system/etc/ecryptfs.tab \
$(VENDOR_BLOB_FOLDER)/etc/encrypt.tab:/system/etc/encrypt.tab \
$(VENDOR_BLOB_FOLDER)/etc/excluded-input-devices.xml:/system/etc/excluded-input-devices.xml \
$(VENDOR_BLOB_FOLDER)/etc/opl.dat.enc:/system/etc/opl.dat.enc \
$(VENDOR_BLOB_FOLDER)/etc/smc_android_cfg.ini:/system/etc/smc_android_cfg.ini \
$(VENDOR_BLOB_FOLDER)/etc/smc_pa.ift:/system/etc/smc_pa.ift \
$(VENDOR_BLOB_FOLDER)/etc/smc_pa_pk_4_8Mb_ipa.bin:/system/etc/smc_pa_pk_4_8Mb_ipa.bin \
$(VENDOR_BLOB_FOLDER)/etc/smc_pa_pk_4_ipa.bin:/system/etc/smc_pa_pk_4_ipa.bin \
$(VENDOR_BLOB_FOLDER)/etc/mspfirmware/mspfirmware.bin:/system/etc/mspfirmware/mspfirmware.bin \
$(VENDOR_BLOB_FOLDER)/etc/mspfirmware/version.txt:/system/etc/mspfirmware/version.txt

# system/etc/(others)
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/firmware/ap_bt_data.bin:/system/etc/firmware/ap_bt_data.bin \
$(VENDOR_BLOB_FOLDER)/etc/ppp/peers/pppd-ril.options:/system/etc/ppp/peers/pppd-ril.options \
$(VENDOR_BLOB_FOLDER)/etc/wifi/wlan_fem.ini:/system/etc/wifi/wlan_fem.ini

# system/usr
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/usr/bin/gki_pd_notifier:system/usr/bin/gki_pd_notifier \
$(VENDOR_BLOB_FOLDER)/usr/bin/panic_daemon:system/usr/bin/panic_daemon \
$(VENDOR_BLOB_FOLDER)/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc:system/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc \
$(VENDOR_BLOB_FOLDER)/usr/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
$(VENDOR_BLOB_FOLDER)/usr/keylayout/cy8c201xx.kl:system/usr/keylayout/cy8c201xx.kl

# system/lib
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/lib/libbattd.so:/system/lib/libbattd.so \
$(VENDOR_BLOB_FOLDER)/lib/libbcbmsg.so:/system/lib/libbcbmsg.so \
$(VENDOR_BLOB_FOLDER)/lib/libdataencrypt.so:/system/lib/libdataencrypt.so \
$(VENDOR_BLOB_FOLDER)/lib/libdataencrypt_tpa.so:/system/lib/libdataencrypt_tpa.so \
$(VENDOR_BLOB_FOLDER)/lib/libdataencrypt_utils.so:/system/lib/libdataencrypt_utils.so \
$(VENDOR_BLOB_FOLDER)/lib/libhdcp.so:/system/lib/libhdcp.so \
$(VENDOR_BLOB_FOLDER)/lib/libhdmi.so:/system/lib/libhdmi.so \
$(VENDOR_BLOB_FOLDER)/lib/libmot_atcmd.so:/system/lib/libmot_atcmd.so \
$(VENDOR_BLOB_FOLDER)/lib/libmotodbgutils.so:/system/lib/libmotodbgutils.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_netutil.so:/system/lib/libmoto_netutil.so \
$(VENDOR_BLOB_FOLDER)/lib/libmss.so:/system/lib/libmss.so \
$(VENDOR_BLOB_FOLDER)/lib/libmss.so.sig:/system/lib/libmss.so.sig \
$(VENDOR_BLOB_FOLDER)/lib/libnbgm.so:/system/lib/libnbgm.so \
$(VENDOR_BLOB_FOLDER)/lib/libnmea.so:/system/lib/libnmea.so \
$(VENDOR_BLOB_FOLDER)/lib/libOMX.ITTIAM.AAC.encode.so:/system/lib/libOMX.ITTIAM.AAC.encode.so \
$(VENDOR_BLOB_FOLDER)/lib/libpkip.so:/system/lib/libpkip.so \
$(VENDOR_BLOB_FOLDER)/lib/libpppd_plugin-ril.so:/system/lib/libpppd_plugin-ril.so \
$(VENDOR_BLOB_FOLDER)/lib/libsensorhub_jni.so:/system/lib/libsensorhub_jni.so \
$(VENDOR_BLOB_FOLDER)/lib/libsmapi.so:/system/lib/libsmapi.so \
$(VENDOR_BLOB_FOLDER)/lib/libthermal_config.so:/system/lib/libthermal_config.so \
$(VENDOR_BLOB_FOLDER)/lib/libthermal_manager.so:/system/lib/libthermal_manager.so \
$(VENDOR_BLOB_FOLDER)/lib/libtpa.so:/system/lib/libtpa.so \
$(VENDOR_BLOB_FOLDER)/lib/libtpa_core.so:/system/lib/libtpa_core.so \
$(VENDOR_BLOB_FOLDER)/lib/libui3d.so:/system/lib/libui3d.so

# RIL files
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/bin/base64:/system/bin/base64 \
$(VENDOR_BLOB_FOLDER)/bin/extract-embedded-files:/system/bin/extract-embedded-files \
$(VENDOR_BLOB_FOLDER)/bin/mm-wrigley-qc-dump.sh:/system/bin/mm-wrigley-qc-dump.sh \
$(VENDOR_BLOB_FOLDER)/bin/oem-iptables-init.sh:/system/bin/oem-iptables-init.sh \
$(VENDOR_BLOB_FOLDER)/bin/pppd-ril:/system/bin/pppd-ril \
$(VENDOR_BLOB_FOLDER)/bin/vril-dump:/system/bin/vril-dump \
$(VENDOR_BLOB_FOLDER)/bin/wrigley-diag.sh:/system/bin/wrigley-diag.sh \
$(VENDOR_BLOB_FOLDER)/bin/wrigley-dump.sh:/system/bin/wrigley-dump.sh \
$(VENDOR_BLOB_FOLDER)/bin/wrigley-fetch-mpr.sh:/system/bin/wrigley-fetch-mpr.sh \
$(VENDOR_BLOB_FOLDER)/bin/wrigley-iptables.sh:/system/bin/wrigley-iptables.sh \
$(VENDOR_BLOB_FOLDER)/lib/libb64.so:/system/lib/libb64.so \
$(VENDOR_BLOB_FOLDER)/lib/libbabysit.so:/system/lib/libbabysit.so \
$(VENDOR_BLOB_FOLDER)/lib/libmotdb.so:/system/lib/libmotdb.so \
$(VENDOR_BLOB_FOLDER)/lib/lib-mot-lte-ril.so:/system/lib/lib-mot-lte-ril.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_mdmctrl.so:/system/lib/libmoto_mdmctrl.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_nwif_ril.so:/system/lib/libmoto_nwif_ril.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_qmi_ril.so:/system/lib/libmoto_qmi_ril.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_ril.so:/system/lib/libmoto_ril.so \
$(VENDOR_BLOB_FOLDER)/lib/librds_util.so:/system/lib/librds_util.so \
$(VENDOR_BLOB_FOLDER)/lib/libril_rds.so:/system/lib/libril_rds.so \
$(VENDOR_BLOB_FOLDER)/lib/moto-ril-multimode.so:/system/lib/moto-ril-multimode.so \
$(VENDOR_BLOB_FOLDER)/lib/libims_client_jni.so:/system/lib/libims_client_jni.so

# system/lib/hw
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/lib/hw/gps.spyder.so:/system/lib/hw/gps.spyder.so \
$(VENDOR_BLOB_FOLDER)/lib/hw/sensorhub.spyder.so:/system/lib/hw/sensorhub.spyder.so \
$(VENDOR_BLOB_FOLDER)/lib/hw/sensors.spyder.so:/system/lib/hw/sensors.spyder.so

# system/vendor
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/vendor/bin/pvrsrvinit:/system/vendor/bin/pvrsrvinit \
$(VENDOR_BLOB_FOLDER)/vendor/lib/egl/libeglinfo.so:/system/vendor/lib/egl/libeglinfo.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/libglslcompiler_SGX540_120.so:/system/vendor/lib/libglslcompiler_SGX540_120.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/libIMGegl_SGX540_120.so:/system/vendor/lib/libIMGegl_SGX540_120.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/libpvr2d_SGX540_120.so:/system/vendor/lib/libpvr2d_SGX540_120.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so:/system/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/libPVRScopeServices.so:/system/vendor/lib/libPVRScopeServices.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/libsrv_init_SGX540_120.so:/system/vendor/lib/libsrv_init_SGX540_120.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/libsrv_um_SGX540_120.so:/system/vendor/lib/libsrv_um_SGX540_120.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/libusc_SGX540_120.so:/system/vendor/lib/libusc_SGX540_120.so \
$(VENDOR_BLOB_FOLDER)/vendor/lib/hw/gralloc.omap4.so:/system/vendor/lib/hw/gralloc.omap4.so \
$(VENDOR_BLOB_FOLDER)/etc/powervr.ini:/system/etc/powervr.ini

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

# system/etc/omapcam/module2
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/module2/cid1044_mt9m114_sensor_config_dcc.bin:system/etc/omapcam/module2/cid1044_mt9m114_sensor_config_dcc.bin

# system/etc
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/firmware/ducati-m3.bin:/system/etc/firmware/ducati-m3.bin
