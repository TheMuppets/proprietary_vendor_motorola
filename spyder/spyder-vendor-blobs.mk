VENDOR_BLOB_FOLDER := vendor/motorola/spyder/proprietary

# system/bin
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/bin/akmd8975:/system/bin/akmd8975 \
$(VENDOR_BLOB_FOLDER)/bin/ap_gain.bin:/system/bin/ap_gain.bin \
$(VENDOR_BLOB_FOLDER)/bin/ap_gain_mmul.bin:/system/bin/ap_gain_mmul.bin \
$(VENDOR_BLOB_FOLDER)/bin/msp430:/system/bin/msp430

# system/etc
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/firmware/ducati-m3.bin:/system/etc/firmware/ducati-m3.bin \
$(VENDOR_BLOB_FOLDER)/etc/firmware/TIInit_10.6.15.bts:system/etc/firmware/TIInit_10.6.15.bts \
$(VENDOR_BLOB_FOLDER)/etc/mspfirmware/mspfirmware.bin:/system/etc/mspfirmware/mspfirmware.bin \
$(VENDOR_BLOB_FOLDER)/etc/mspfirmware/version.txt:/system/etc/mspfirmware/version.txt

# system/usr
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/usr/keylayout/cy8c201xx.kl:system/usr/keylayout/cy8c201xx.kl

# system/lib/hw
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/lib/hw/audio.primary.omap4.so:/system/lib/hw/audio.primary.omap4.so

# system/lib
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/lib/hw/sensorhub.spyder.so:/system/lib/hw/sensorhub.spyder.so \
$(VENDOR_BLOB_FOLDER)/lib/hw/sensors.spyder.so:/system/lib/hw/sensors.spyder.so \
$(VENDOR_BLOB_FOLDER)/lib/libsensorhub_jni.so:/system/lib/libsensorhub_jni.so

# system/etc/omapcam/module2
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/module2/cid1044_mt9m114_sensor_config_dcc.bin:system/etc/omapcam/module2/cid1044_mt9m114_sensor_config_dcc.bin
