VENDOR_BLOB_FOLDER := vendor/motorola/maserati/proprietary
COMMON_BLOB_FOLDER := vendor/motorola/omap4-common/proprietary

# system/bin
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/bin/akmd8975:/system/bin/akmd8975 \
$(COMMON_BLOB_FOLDER)/bin/ap_gain.bin:/system/bin/ap_gain.bin \
$(COMMON_BLOB_FOLDER)/bin/ap_gain_mmul.bin:/system/bin/ap_gain_mmul.bin

# system/etc
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/firmware/ducati-m3.bin:/system/etc/firmware/ducati-m3.bin \
$(VENDOR_BLOB_FOLDER)/etc/firmware/TIInit_10.6.15.bts:system/etc/firmware/TIInit_10.6.15.bts

# system/usr
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/usr/keylayout/atmxt-i2c.kl:system/usr/keylayout/atmxt-i2c.kl

# system/lib/hw
PRODUCT_COPY_FILES += \
$(COMMON_BLOB_FOLDER)/lib/hw/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
$(VENDOR_BLOB_FOLDER)/lib/hw/sensors.maserati.so:/system/lib/hw/sensors.maserati.so

# system/etc/omapcam/module2
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/omapcam/module2/cid1044_mt9m114_sensor_config_dcc.bin:system/etc/omapcam/module2/cid1044_mt9m114_sensor_config_dcc.bin
