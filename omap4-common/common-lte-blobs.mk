VENDOR_BLOB_FOLDER := vendor/motorola/omap4-common/proprietary

# RIL files
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/bin/base64:/system/bin/base64 \
$(VENDOR_BLOB_FOLDER)/bin/extract-embedded-files:/system/bin/extract-embedded-files \
$(VENDOR_BLOB_FOLDER)/bin/mm-wrigley-qc-dump.sh:/system/bin/mm-wrigley-qc-dump.sh \
$(VENDOR_BLOB_FOLDER)/bin/oem-iptables-init.sh:/system/bin/oem-iptables-init.sh \
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

