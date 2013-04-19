VENDOR_BLOB_FOLDER := vendor/motorola/solana/proprietary

# system/bin (from targa)
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/bin/akmd8975:/system/bin/akmd8975

# system/etc (from targa)
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/firmware/TIInit_10.6.15.bts:system/etc/firmware/TIInit_10.6.15.bts

# system/lib/hw (from targa)
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/lib/hw/audio.primary.omap4.so:/system/lib/hw/audio.primary.solana.so

# RIL files (from solana 5.7.906)
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/ppp/peers/pppd-ril.options:/system/etc/ppp/peers/pppd-ril.options \
$(VENDOR_BLOB_FOLDER)/lib/libmot_atcmd.so:/system/lib/libmot_atcmd.so \
$(VENDOR_BLOB_FOLDER)/lib/libmot_atcmd_mflex.so:/system/lib/libmot_atcmd_mflex.so \
$(VENDOR_BLOB_FOLDER)/lib/libmotodbgutils.so:/system/lib/libmotodbgutils.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_mdmctrl.so:/system/lib/libmoto_mdmctrl.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_netutil.so:/system/lib/libmoto_netutil.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_ril.so:/system/lib/libmoto_ril.so \
$(VENDOR_BLOB_FOLDER)/lib/libpppd_plugin-ril.so:/system/lib/libpppd_plugin-ril.so \
$(VENDOR_BLOB_FOLDER)/lib/librds_util.so:/system/lib/librds_util.so \
$(VENDOR_BLOB_FOLDER)/lib/libril_rds.so:/system/lib/libril_rds.so

# Extra files
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/bin/chat-ril:/system/bin/chat-ril \
$(VENDOR_BLOB_FOLDER)/bin/ecckeyd:/system/bin/ecckeyd \
$(VENDOR_BLOB_FOLDER)/bin/pppd-ril:/system/bin/pppd-ril \
$(VENDOR_BLOB_FOLDER)/bin/secclkd:/system/bin/secclkd \
$(VENDOR_BLOB_FOLDER)/bin/testpppd:/system/bin/testpppd \
$(VENDOR_BLOB_FOLDER)/etc/excluded-input-devices.xml:/system/etc/excluded-input-devices.xml \
$(VENDOR_BLOB_FOLDER)/etc/opl.dat.enc:/system/etc/opl.dat.enc \
$(VENDOR_BLOB_FOLDER)/usr/bin/gki_pd_notifier:/system/usr/bin/gki_pd_notifier \
$(VENDOR_BLOB_FOLDER)/usr/bin/panic_daemon:/system/usr/bin/panic_daemon

