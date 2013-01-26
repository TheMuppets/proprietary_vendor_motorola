VENDOR_FOLDER := vendor/motorola/omap4-common

# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
    $(VENDOR_FOLDER)/proprietary/common_drm/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so \
    $(VENDOR_FOLDER)/proprietary/common_drm/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
    $(VENDOR_FOLDER)/proprietary/common_drm/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    $(VENDOR_FOLDER)/proprietary/common_drm/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
    $(VENDOR_FOLDER)/proprietary/common_drm/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

