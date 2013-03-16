VENDOR_BLOB_FOLDER := vendor/motorola/solana/proprietary

# system/bin (from targa)
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/bin/akmd8975:/system/bin/akmd8975

# system/etc (from targa)
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/firmware/TIInit_10.6.15.bts:system/etc/firmware/TIInit_10.6.15.bts

# RIL files (from solana 5.7.906)
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/lib/libmot_atcmd.so:/system/lib/libmot_atcmd.so \
$(VENDOR_BLOB_FOLDER)/lib/libmot_atcmd_mflex.so:/system/lib/libmot_atcmd_mflex.so \
$(VENDOR_BLOB_FOLDER)/lib/libmotodbgutils.so:/system/lib/libmotodbgutils.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_mdmctrl.so:/system/lib/libmoto_mdmctrl.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_netutil.so:/system/lib/libmoto_netutil.so \
$(VENDOR_BLOB_FOLDER)/lib/libmoto_ril.so:/system/lib/libmoto_ril.so \
$(VENDOR_BLOB_FOLDER)/lib/libpppd_plugin-ril.so:/system/lib/libpppd_plugin-ril.so \
$(VENDOR_BLOB_FOLDER)/lib/librds_util.so:/system/lib/librds_util.so \
$(VENDOR_BLOB_FOLDER)/lib/libril_rds.so:/system/lib/libril_rds.so
